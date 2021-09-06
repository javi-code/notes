import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text('Mais'),
        ),
      ),
      floatingActionButton: _addNewNote(),
    );
  }

  FloatingActionButton _addNewNote() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, "/empty");
      },
      tooltip: 'Agregar nota',
      child: Icon(Icons.post_add),
    );
  }
}
