import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class RecordNote extends StatefulWidget {
  final title;
  const RecordNote(this.title);

  @override
  _RecordNoteState createState() => _RecordNoteState();
}

class _RecordNoteState extends State<RecordNote> {
  bool isComplete = false;
  final List<String> records = <String>[
    'AAAAAAA',
    'CHFSAW',
    'DGDDDDDF',
    'ASDVZXDS',
    'BEDF',
    'CVVDS',
    'DBFSD',
    'ABSSSSSSSSSSV This is Long Text Testing ABSSSSSSSSSSV This is Long Text Testing ',
    'BDSF',
    'CBSDG',
    'DSDfS',
    'ABDDS',
    'BWETE',
    'CLKLMV',
    'DBHJHSD',
    'ASD',
    'BASW',
    'CAAFF',
    'DWBA ABSSSSSSSSSSV This is Long Text Testing ABSSSSSSSSSSV This is Long Text Testing ABSSSSSSSSSSV This is Long Text Testing ABSSSSSSSSSSV This is Long Text Testing ABSSSSSSSSSSV This is Long Text Testing ABSSSSSSSSSSV This is Long Text Testing'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          title:
              new Text(widget.title, style: new TextStyle(color: Colors.white)),
          elevation: 0,
          // backgroundColor: Colors.amber,
        ),
        body: Container(
          child: new Stack(
            children: <Widget>[
              new Container(
                child: noteList(),
              ),
              new Align(
                  alignment: FractionalOffset.bottomCenter, child: addNew()),
            ],
          ),
        ));
  }

  addNew() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.5, color: Colors.white70),
        ),
      ),
      width: double.infinity,
      height: 60.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: TextField(
                style: TextStyle(color: Colors.white70),
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white38),
                    border: InputBorder.none,
                    hintText: 'Enter new note'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16),
            width: 45,
            height: 45,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.send,
                size: 20,
              ),
              elevation: 0,
              backgroundColor: Color(0xFF41407c),
            ),
          ),
//              Container(
//                padding: EdgeInsets.only(right: 16.0),
//                child: Ink(
//                  decoration: ShapeDecoration(
//                    color: Color(0xFF41407c),
//                    shape: CircleBorder(),
//                  ),
//                  child: IconButton(
//                    icon: Icon(Icons.send,color: Colors.white,),
//                    onPressed: () {
//                      print("You Pressed the icon!");
//                    },
//                  ),
//                ),
//              ),
        ],
      ),
    );
  }

  noteList() {
    return Container(
        margin: const EdgeInsets.only(bottom: 60, left: 8.0, right: 8.0),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: records.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  InkWell(
                    child: noteItem(index),
                  ),
                ],
              );
            }));
  }

  noteItem(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: 18,
          height: 18,
          child: FloatingActionButton(
            heroTag: "fab_${records[index]}",
            onPressed:()=> onComplete(index),
            child: Icon(
              //Icons.check,
            isComplete?Icons.check:Icons.brightness_1,
              size: 18,
              color: Color(0xFF1D2733),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.only(bottom: 3.0, left: 8),
          decoration: BoxDecoration(
            color: Color(0xFF193C5E),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                constraints: BoxConstraints(
                    minWidth: 10,
                    maxWidth: MediaQuery.of(context).size.width * 0.70),
                child: Text(
                 records[index],
                  style: TextStyle(
                    decoration: isComplete?TextDecoration.lineThrough:TextDecoration.none,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  getCurrentTime(),
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white38,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }


  onComplete(int index) {
    print('result : $isComplete');
    setState(() {
      if(isComplete)
      isComplete = false;
      else  isComplete = true;
    });
  }

  getCurrentTime(){
    DateTime now = DateTime.now();
    return  DateFormat('jm').format(now);
  }
}
