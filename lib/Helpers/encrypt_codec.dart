import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart';
import 'package:meta/meta.dart';
import 'package:sembast/src/api/v2/sembast.dart';

var _random = Random.secure();

/// Random bytes generator
Uint8List _randBytes(int length) {
  return Uint8List.fromList(
      List<int>.generate(length, (i) => _random.nextInt(256)));
}

/// Generate an encryption password based on a user input password
///
/// It uses MD5 which generates a 16 bytes blob, size needed for Salsa20
Uint8List _generateEncryptPassword(String password) {
  var blob = Uint8List.fromList(md5
      .convert(utf8.encode(password))
      .bytes);
  assert(blob.length == 16);
  return blob;
}

/// Salsa20 based encoder
class _EncryptEncoder extends Converter<Map<String, dynamic>, String> {
  final Salsa20 salsa20;

  _EncryptEncoder(this.salsa20);

  @override
  String convert(Map<String, dynamic> input) {
    // Generate random initial value
    Uint8List iv = _randBytes(8);
    String ivEncoded = base64.encode(iv);
    assert(ivEncoded.length == 12);

    // Encode the input value
    String encoded =
        Encrypter(salsa20)
            .encrypt(json.encode(input), iv: IV(iv))
            .base64;

    // Prepend the initial value
    return '$ivEncoded$encoded';
  }
}

/// Salsa20 based decoder
class _EncryptDecoder extends Converter<String, Map<String, dynamic>> {
  final Salsa20 salsa20;

  _EncryptDecoder(this.salsa20);

  @override
  Map<String, dynamic> convert(String input) {
    // Read the initial value that was prepended
    assert(input.length >= 12);
    Uint8List iv = base64.decode(input.substring(0, 12));

    // Extract the real input
    input = input.substring(12);

    // Decode the input
    var decoded = json.decode(Encrypter(salsa20).decrypt64(input, iv: IV(iv)));
    if (decoded is Map) {
      return decoded.cast<String, dynamic>();
    }
    throw FormatException('invalid input $input');
  }
}

/// Salsa20 based Codec
class _EncryptCodec extends Codec<Map<String, dynamic>, String> {
  _EncryptEncoder _encoder;
  _EncryptDecoder _decoder;

  _EncryptCodec(Uint8List passwordBytes) {
    var salsa20 = Salsa20(Key(passwordBytes));
    _encoder = _EncryptEncoder(salsa20);
    _decoder = _EncryptDecoder(salsa20);
  }

  @override
  Converter<String, Map<String, dynamic>> get decoder => _decoder;

  @override
  Converter<Map<String, dynamic>, String> get encoder => _encoder;
}

/// Our plain text signature
const _encryptCodecSignature = 'encrypt';

/// Create a codec to use to open a database with encrypted stored data.
///
/// Hash (md5) of the password is used (but never stored) as a key to encrypt
/// the data using the Salsa20 algorithm with a random (8 bytes) initial value
///
/// This is just used as a demonstration and should not be considered as a
/// reference since its implementation (and storage format) might change.
///
/// No performance metrics has been made to check whether this is a viable
/// solution for big databases.
///
/// The usage is then
///
/// ```dart
/// // Initialize the encryption codec with a user password
/// var codec = getEncryptSembastCodec(password: '[your_user_password]');
/// // Open the database with the codec
/// Database db = await factory.openDatabase(dbPath, codec: codec);
///
/// // ...your database is ready to use
/// ```
SembastCodec getEncryptSembastCodec({@required String password}) =>
    SembastCodec(
        signature: _encryptCodecSignature,
        codec: _EncryptCodec(_generateEncryptPassword(password)));
