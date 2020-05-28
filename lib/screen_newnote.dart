import 'package:flutter/material.dart';

class NewNote extends StatefulWidget {
  @override
  _NewNoteState createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          title: new Text("Dynamic Text",
              style: new TextStyle(color: Colors.white)),
          elevation: 0,
          // backgroundColor: Colors.amber,
        ),
        body: Container());
  }
}
