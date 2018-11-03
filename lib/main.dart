import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: listviewinside(),
    ));

class listviewinside extends StatefulWidget {
  @override
  _listviewinsideState createState() => _listviewinsideState();
}

class _listviewinsideState extends State<listviewinside> {
  List<int> _data = new List<int>();

  @override
  void initState() {
    setState(() {
      for (int i = 0; i < 10; i++) {
        _data.add(i);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("ListView"),
        ),
        body: ListView(
          children: <Widget>[
            new Text("Mostrando Listview 1 e listview 2"),
            new Padding(
                padding: const EdgeInsets.symmetric(
              vertical: 5.0,
            )),
            new listview1(_data),
            new listview2(_data),
          ],
        ));
  }
}

class listview1 extends StatelessWidget {
  listview1(this.data);
  final List data;
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return new Card(
          child: new Container(
              padding: const EdgeInsets.all(32.0),
              child: new Text('listview 1  $index')),
        );
      },
    );
  }
}

class listview2 extends StatelessWidget {
  listview2(this.data);
  List data;
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return new Card(
          child: new Container(
            padding: const EdgeInsets.all(32.0),
            child: Text('listview 2 $index'),
          ),
        );
      },
    );
  }
}
