import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
class S implements WidgetsLocalizations {
  const S();

  static S current;

  static const GeneratedLocalizationsDelegate delegate =
    GeneratedLocalizationsDelegate();

  static S of(BuildContext context) => Localizations.of<S>(context, S);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get absence => "absences";
  String get absence_time => "absence time: ";
  String get absences_title => "Absences";
  String get absent_title => "Absences / Delays";
  String get accounts => "Accounts";
  String get administration_time => "time of logging: ";
  String get all_average => "Total average: ";
  String get all_median => "Median of all grades:";
  String get all_mode => "Mode of all grades:";
  String get average => "Average: ";
  String get average_menu => "average";
  String get averages => "Averages";
  String get blue => "blue";
  String get boa => "Boa";
  String get choose => "choose";
  String get choose_password => "Please enter a password.";
  String get choose_school => "Choose a school:";
  String get choose_school_warning => "Choose a school as well";
  String get choose_username => "Please enter a username!";
  String get class_average => "Class average: ";
  String get color => "Color";
  String get color_lightgreen => "lightgreen";
  String get color_pink => "pink";
  String get color_purple => "purple";
  String get color_teal => "teal";
  String get colorful_mainpage => "Colorful main-page";
  String get confirm_close => "Do you want to close the application?";
  String get dark_theme => "Dark theme";
  String get datas => "Datas";
  String get day => "day";
  String get deadline => "deadline: ";
  String get delay_mins => "delay time: ";
  String get dep => "substitution";
  String get dep_teacher => "deputy teacher: ";
  String get disclaimer => "This is an unofficial client application for the e-Kréta system. Since the app was not made by eKRÉTA Informatikai Zrt, please don't use their support. Instead you can write me an email:\neszivacs@gmail.com\n";
  String get done => "done";
  String get email => "eSzivacs@gmail.com";
  String get endyear => "end-year";
  String get evaluations => "Evaluations";
  String get excluding_delay => "*excluding delay";
  String get flutter => "Flutter";
  String get github => "GitHub";
  String get grade1 => "1 grades:";
  String get grade2 => "2 grades:";
  String get grade3 => "3 grades:";
  String get grade4 => "4 grades:";
  String get grade5 => "5 grades:";
  String get green => "green";
  String get grey => "grey";
  String get group => "class: ";
  String get halfyear => "half-year";
  String get homework => "homework";
  String get homeworks => "Homeworks";
  String get if_i_got => "What if I got a...";
  String get info => "About";
  String get info_address => "Address: ";
  String get info_birthdate => "Date of birth: ";
  String get info_kretaid => "Kréta id: ";
  String get info_mathers_name => "Mother's name: ";
  String get info_parents => "Parents: ";
  String get info_school => "School: ";
  String get info_teacher => "Teacher: ";
  String get instagram => "Instagram";
  String get justification_mode => "justification method: ";
  String get justification_state => "justification status: ";
  String get language => "Language";
  String get later => "later";
  String get lesson => "lesson";
  String get lesson_end => "end of lesson: ";
  String get lesson_start => "start of lesson: ";
  String get login => "Login";
  String get logo_menu => "Logo in the menu";
  String get made_by => "made by: ";
  String get made_with => "made with: ";
  String get main_page => "Mainpage";
  String get messages => "Messages";
  String get minute => "minutes";
  String get missed => "canceled";
  String get mode => "mode: ";
  String get month => "month";
  String get network_error => "network error";
  String get next_day => "next day";
  String get next_lesson => "Next lesson: ";
  String get next_week => "next week";
  String get no => "no";
  String get no_lessons => "Looks like you have no lessons this week :)";
  String get notes => "Notes";
  String get notification => "Notification";
  String get notification_failed => "Failed to turn on notifications";
  String get notworking => "not working";
  String get ok => "ok";
  String get orange => "orange";
  String get password => "password";
  String get password_hint => "usually date of birth (e.g.: 2000-01-02)";
  String get prev_day => "previous day";
  String get prev_week => "previous week";
  String get quarteryear => "quarter-year";
  String get range => "range: ";
  String get receivers => "Receivers: ";
  String get red => "red";
  String get room => "room: ";
  String get school => "School: ";
  String get settings => "Settings";
  String get short_friday => "F";
  String get short_monday => "M";
  String get short_saturday => "Sa";
  String get short_sunday => "Su";
  String get short_thursday => "Th";
  String get short_tuesday => "Tu";
  String get short_wednesday => "W";
  String get singleuser_mainpage => "Single-user main-page";
  String get sort => "Sort";
  String get sort_eval => "grade";
  String get sort_real_time => "time of writing";
  String get sort_subject => "subject";
  String get sort_time => "upload time";
  String get state => "state: ";
  String get statistics => "Statistics";
  String get subject => "subject: ";
  String get success => "Success";
  String get sure => "Are you sure?";
  String get sync_on_data => "Sync on cellular network";
  String get teacher => "teacher: ";
  String get telegram => "Telegram";
  String get theme => "topic: ";
  String get time => "time: ";
  String get timetable => "Timetable";
  String get title => "e-Szivacs";
  String get title_full => "e-Szivacs 2";
  String get two_months => "two months";
  String get upload_time => "upload time: ";
  String get uploader => "uploader: ";
  String get username => "username";
  String get username_hint => "student ID (the 11-digit number)";
  String get value => "value: ";
  String get version => "version: ";
  String get version_number => "2.0";
  String get week => "week";
  String get weight => "weight: ";
  String get wrong_pass => "incorrect username or password";
  String get yellow => "yellow";
  String get yes => "yes";
  String get youtube => "YouTube";
  String all_absences(String amount) => "Absence*: $amount hours";
  String all_delay(String amount) => "Total delay: $amount minutes";
  String delete_confirmation(String name) => "Would you like to delete user: $name ?";
  String lessons(String db) => "lessons: $db";
  String parental_justification(String amount) => "Parental justification: $amount";
  String sync_frequency(String mins) => "Frequency of sync: $mins min";
}

class $en extends S {
  const $en();
}

class $hu extends S {
  const $hu();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get grade5 => "5-ös osztályzat:";
  @override
  String get grade4 => "4-es osztályzat:";
  @override
  String get instagram => "Instagram";
  @override
  String get grade3 => "3-as osztályzat:";
  @override
  String get quarteryear => "negyedéves";
  @override
  String get sync_on_data => "Szinkronizálás mobilinterneten";
  @override
  String get grade2 => "2-es osztályzat:";
  @override
  String get grade1 => "1-es osztályzat:";
  @override
  String get dark_theme => "Sötét téma";
  @override
  String get dep => "helyettesítés";
  @override
  String get color_pink => "rózsaszín";
  @override
  String get all_average => "Összes jegy átlaga: ";
  @override
  String get password => "jelszó";
  @override
  String get colorful_mainpage => "Színes főoldal";
  @override
  String get state => "állapot: ";
  @override
  String get github => "GitHub";
  @override
  String get choose_school => "Válassz iskolát:";
  @override
  String get sure => "Biztos?";
  @override
  String get short_thursday => "Cs";
  @override
  String get halfyear => "félévi";
  @override
  String get lesson => "óra";
  @override
  String get version => "verzió: ";
  @override
  String get info_parents => "Szülők: ";
  @override
  String get upload_time => "feltöltés ideje: ";
  @override
  String get if_i_got => "Ha kapnék egy...";
  @override
  String get messages => "Üzenetek";
  @override
  String get wrong_pass => "hibás felasználónév vagy jelszó";
  @override
  String get two_months => "két hónap";
  @override
  String get average => "Átlag: ";
  @override
  String get yellow => "sárga";
  @override
  String get range => "határ: ";
  @override
  String get info_mathers_name => "Anyja neve: ";
  @override
  String get absent_title => "Hiányzások / Késések";
  @override
  String get login => "Bejelentkezés";
  @override
  String get delay_mins => "késés mértéke: ";
  @override
  String get next_week => "következő hét";
  @override
  String get justification_mode => "igazolás módja: ";
  @override
  String get title_full => "e-Szivacs 2";
  @override
  String get main_page => "Főoldal";
  @override
  String get uploader => "feltöltő: ";
  @override
  String get theme => "téma: ";
  @override
  String get prev_week => "előző hét";
  @override
  String get info_address => "Lakcím: ";
  @override
  String get deadline => "határidő: ";
  @override
  String get email => "eSzivacs@gmail.com";
  @override
  String get administration_time => "naplózás ideje: ";
  @override
  String get disclaimer => "Ez egy nem-hivatalos kliens alkalmazás az e-Kréta rendszerhez. \n\nMivel az appot nem az eKRÉTA Informatikai Zrt. készítette, ha ötleted van az appal kapcsolatban, kérlek ne az ő ügyfélszolgálatukat terheld, inkább írj nekünk egy e-mailt: \n\neszivacs@gmail.com\n";
  @override
  String get lesson_end => "óra vége: ";
  @override
  String get homework => "házi";
  @override
  String get missed => "elmarad";
  @override
  String get color_teal => "kékeszöld";
  @override
  String get sort_subject => "tárgy";
  @override
  String get timetable => "Órarend";
  @override
  String get no_lessons => "Úgy néz ki ezen a héten nincs órád :)";
  @override
  String get username_hint => "oktatási azonosító 11-jegyű diákigazolványszám";
  @override
  String get blue => "kék";
  @override
  String get accounts => "Fiókok";
  @override
  String get short_saturday => "Sz";
  @override
  String get statistics => "Statisztikák";
  @override
  String get made_with => "made with: ";
  @override
  String get network_error => "hálózati probléma";
  @override
  String get notes => "Feljegyzések";
  @override
  String get info_teacher => "Osztályfőnök: ";
  @override
  String get lesson_start => "órakezdés: ";
  @override
  String get subject => "tárgy: ";
  @override
  String get short_friday => "P";
  @override
  String get sort_time => "beírás ideje";
  @override
  String get all_median => "Összes jegy mediánja: ";
  @override
  String get logo_menu => "Logó a menüben";
  @override
  String get version_number => "2.0";
  @override
  String get language => "Nyelv";
  @override
  String get mode => "mód: ";
  @override
  String get red => "piros";
  @override
  String get notification => "Értesítés";
  @override
  String get homeworks => "Házi feladatok";
  @override
  String get short_sunday => "V";
  @override
  String get later => "múlva";
  @override
  String get school => "Iskola: ";
  @override
  String get absences_title => "Hiányzások";
  @override
  String get day => "nap";
  @override
  String get info => "Infó";
  @override
  String get prev_day => "előző nap";
  @override
  String get group => "osztály: ";
  @override
  String get justification_state => "igazolás állapota: ";
  @override
  String get settings => "Beállítások";
  @override
  String get datas => "Adatok";
  @override
  String get weight => "súly: ";
  @override
  String get average_menu => "átlag";
  @override
  String get sort => "Rendezés";
  @override
  String get choose_password => "Kérlek add meg a jelszavadat!";
  @override
  String get all_mode => "Összes jegy módusza: ";
  @override
  String get done => "kész";
  @override
  String get flutter => "Flutter";
  @override
  String get dep_teacher => "helyettesítő tanár";
  @override
  String get month => "hónap";
  @override
  String get boa => "BoA";
  @override
  String get info_school => "Iskola: ";
  @override
  String get success => "Siker";
  @override
  String get class_average => "Osztályátlag: ";
  @override
  String get next_day => "következő nap";
  @override
  String get info_kretaid => "Kréta azonosító: ";
  @override
  String get short_tuesday => "K";
  @override
  String get youtube => "YouTube";
  @override
  String get no => "nem";
  @override
  String get week => "hét";
  @override
  String get choose_school_warning => "Válassz egy iskolát is";
  @override
  String get color => "Szín";
  @override
  String get absence => "hiányzás";
  @override
  String get notification_failed => "Nem sikerül bekapcsolni az értesítéseket";
  @override
  String get excluding_delay => "*nincs benne a késés";
  @override
  String get averages => "Átlagok";
  @override
  String get choose => "válassz";
  @override
  String get title => "e-Szivacs";
  @override
  String get password_hint => "általában a születési dátum(pl.: 2000-01-02)";
  @override
  String get teacher => "tanár: ";
  @override
  String get short_wednesday => "Sz";
  @override
  String get sort_real_time => "írás ideje";
  @override
  String get notworking => "nem működik";
  @override
  String get receivers => "Címzettek: ";
  @override
  String get singleuser_mainpage => "Egy felhasználó a főoldalon";
  @override
  String get ok => "oké";
  @override
  String get endyear => "év végi";
  @override
  String get value => "érték: ";
  @override
  String get sort_eval => "jegy";
  @override
  String get next_lesson => "Következő óra: ";
  @override
  String get absence_time => "hiányzás ideje: ";
  @override
  String get color_lightgreen => "világosabb zöld";
  @override
  String get confirm_close => "Be akarod zárni az alkalmazást?";
  @override
  String get evaluations => "Jegyek";
  @override
  String get green => "zöld";
  @override
  String get yes => "igen";
  @override
  String get color_purple => "lila";
  @override
  String get telegram => "Telegram";
  @override
  String get room => "terem: ";
  @override
  String get minute => "perc";
  @override
  String get grey => "szürke";
  @override
  String get orange => "narancssárga";
  @override
  String get choose_username => "Kérlek add meg a felhasználónevedet!";
  @override
  String get info_birthdate => "Születési dátum: ";
  @override
  String get time => "idő: ";
  @override
  String get made_by => "készítette: ";
  @override
  String get short_monday => "H";
  @override
  String get username => "felhasználónév";
  @override
  String all_absences(String amount) => "Összes hiányzás*: $amount óra";
  @override
  String parental_justification(String amount) => "Szülői igazolás: $amount db";
  @override
  String lessons(String db) => "órák: $db db";
  @override
  String delete_confirmation(String name) => "Törölni szeretnéd $name felhasználót?";
  @override
  String all_delay(String amount) => "Összes késés: $amount perc";
  @override
  String sync_frequency(String mins) => "Szinkronizálás gyakorisága: $mins perc";
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("en", ""),
      Locale("hu", ""),
    ];
  }

  LocaleListResolutionCallback listResolution({Locale fallback, bool withCountry = true}) {
    return (List<Locale> locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported, withCountry);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale fallback, bool withCountry = true}) {
    return (Locale locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported, withCountry);
    };
  }

  @override
  Future<S> load(Locale locale) {
    final String lang = getLang(locale);
    if (lang != null) {
      switch (lang) {
        case "en":
          S.current = const $en();
          return SynchronousFuture<S>(S.current);
        case "hu":
          S.current = const $hu();
          return SynchronousFuture<S>(S.current);
        default:
          // NO-OP.
      }
    }
    S.current = const S();
    return SynchronousFuture<S>(S.current);
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale, true);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;

  ///
  /// Internal method to resolve a locale from a list of locales.
  ///
  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported, bool withCountry) {
    if (locale == null || !_isSupported(locale, withCountry)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  ///
  /// Returns true if the specified locale is supported, false otherwise.
  ///
  bool _isSupported(Locale locale, bool withCountry) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        // Language must always match both locales.
        if (supportedLocale.languageCode != locale.languageCode) {
          continue;
        }

        // If country code matches, return this locale.
        if (supportedLocale.countryCode == locale.countryCode) {
          return true;
        }

        // If no country requirement is requested, check if this locale has no country.
        if (true != withCountry && (supportedLocale.countryCode == null || supportedLocale.countryCode.isEmpty)) {
          return true;
        }
      }
    }
    return false;
  }
}

String getLang(Locale l) => l == null
  ? null
  : l.countryCode != null && l.countryCode.isEmpty
    ? l.languageCode
    : l.toString();
