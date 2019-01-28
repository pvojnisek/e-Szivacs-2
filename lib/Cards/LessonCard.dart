import 'package:flutter/material.dart';
import '../Datas/Lesson.dart';
import '../Helpers/LocaleHelper.dart';

class LessonCard extends StatelessWidget {
  List<Lesson> lessons;
  int db;
  BuildContext context;

  LessonCard(List<Lesson> lessons, BuildContext context) {
    this.lessons = lessons;
    lessons.removeWhere((Lesson l) => l.start.day != DateTime.now().day);
    db = lessons.length;
    this.context = context;
  }

  @override
  Key get key => new Key(getDate());

  String getDate() {
    //hozzáadunk egy napot, ogy a lista tetején legyen
    return lessons[0].start.add(new Duration(days: 1)).toIso8601String();
  }

  Lesson getNext() {
    for (Lesson l in lessons) {
      if (l.start.isAfter(DateTime.now())) {
        return l;
      }
    }
  }

  String getDurToNext() {
    return getNext().start.difference(DateTime.now()).inMinutes.toString();
  }

  String progress() {
    int n = 0;
    for (Lesson l in lessons) if (l.start.day == DateTime.now().day) n++;
    return (lessons.indexWhere((Lesson l) => l.id==getNext().id) + 1).toString() + "/" + n.toString();
  }

  void openDialog() {
    _lessonsDialog(lessons);
  }

  Future<Null> _lessonsDialog(List<Lesson> lessons) async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return new SimpleDialog(
          children: <Widget>[
            new SingleChildScrollView(
              child: new ListBody(
                children: lessons.map((Lesson l){
                  return new ListTile(
                    title: new Text(l.subject, style: new TextStyle(color: (l.end.isBefore(DateTime.now())) ? Colors.grey:null),),
                    enabled: true,
                    onTap: (){},
                    subtitle: new Text(l.teacher, style: new TextStyle(color: (l.end.isBefore(DateTime.now())) ? Colors.grey:null),),
                    trailing: new Text(l.room, style: new TextStyle(color: (l.end.isBefore(DateTime.now())) ? Colors.grey:null),),
                  );
                }).toList()
              ),
            ),
          ],
          title: Text("Órák"),
          contentPadding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              style: BorderStyle.none,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: openDialog,
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Container(
              child: Wrap(
                children: <Widget>[
                  new Text(
                    AppLocalizations.of(context).next_lesson,
                    style: new TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  new Text(getNext().subject,
                      style: new TextStyle(
                          fontSize: 18.0, color: Colors.blueAccent)),
                  new Text(", ",
                      style: new TextStyle(
                        fontSize: 18.0,
                      )),
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    child: new Text(getDurToNext() + " " + AppLocalizations.of(context).minute,
                        style: new TextStyle(
                            fontSize: 18.0, color: Colors.blueAccent)),
                  ),
                  new Text(
                    AppLocalizations.of(context).later,
                    style: new TextStyle(
                      fontSize: 18.0,
                    ),
                    softWrap: false,
                    maxLines: 2,
                  ),
                ],
                alignment: WrapAlignment.start,
              ),
              alignment: Alignment(-1, 0),
              padding: EdgeInsets.all(10.0),
            ),
            new Divider(
              height: 1.0,
            ),
            new Container(
                padding: EdgeInsets.all(10.0),
                child: new Padding(
                  padding: new EdgeInsets.all(0.0),
                  child: new Row(
                    children: <Widget>[
                      new Text(getNext().room,
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.blueAccent)),
                      new Expanded(
                          child: new Container(
                        child: new Text(progress(),
                            style: new TextStyle(
                                fontSize: 18.0, color: Colors.blueAccent)),
                        alignment: Alignment(1.0, 0.0),
                      ))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
