import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  ExamplePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  Widget add() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "Add",
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget image() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "Image",
        tooltip: 'Image',
        child: Icon(Icons.image),
      ),
    );
  }

  Widget inbox() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "Inbox",
        tooltip: 'Inbox',
        child: Icon(Icons.inbox),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      floatingActionButton: AnimatedFloatingActionButton(
        fabButtons: <Widget>[
          add(),
          image(),
          inbox(),
        ],
        colorStartAnimation: Colors.blue,
        colorEndAnimation: Colors.red,
        animatedIconData: AnimatedIcons.menu_close,
      ),
    );
  }
}
