import 'package:flutter/material.dart';
import 'package:quicknote/screen_newnote.dart';
import 'package:quicknote/screen_recordnote.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final List<String> records = <String>[
    'A',
    'B',
    'C',
    'D',
    'A',
    'B',
    'C',
    'D',
    'A',
    'B',
    'C',
    'D',
    'A',
    'B',
    'C',
    'D',
    'A',
    'B',
    'C',
    'D'
  ];

  void _newNoteScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => NewNote()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:
            new Text("Quick Note", style: new TextStyle(color: Colors.white)),
        elevation: 0,
        // backgroundColor: Colors.amber,
      ),

      body: Column(
        children: <Widget>[
          Divider(color: Colors.white70, thickness: 0.2),
          Flexible(
            child: Container(
                //  height: double.infinity,
                //  width: double.infinity,
                color: Color(0xFF1D2733),
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: records.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () async {
                              await _recordByIndex(index);
                            },
                            child: Container(
                              child: ListTile(
                                title: Text(
                                  "This is Title",
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "12/2/2020",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 12.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(color: Colors.white70, thickness: 0.2),
                        ],
                      );
                    })),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _newNoteScreen,
        child: Icon(Icons.add),
        elevation: 0,
        backgroundColor: Color(0xFF41407c),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _recordByIndex(int index) {
    String title = records[index];
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RecordNote(title)));
  }
}
