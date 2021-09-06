import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _iconsEmpty(),
              _textDescription(),
              //_btnCreateNote(),
              _addBtnNewNote(context),
            ],
          ),
        ),
      ),
    );
  }

  Container _addBtnNewNote(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Center(
        child: ElevatedButton.icon(
          icon: Icon(Icons.post_add),
          label: Text('Crear nota'),
          onPressed: () {
            Navigator.pushNamed(context, '/new-note');
          },
        ),
      ),
    );
  }

  Padding _textDescription() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30, left: 12, right: 12),
      child: Column(
        children: [
          Text(
            "Notitas Dash",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              height: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Te ofrecemos la mejor herramienta para crear notas rápidas y recordatorios",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              height: 1.8,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Center _iconsEmpty() {
    return Center(
      child: new SvgPicture.asset(
        "assets/icons/notas.svg",
        height: 200,
        width: double.infinity,
      ),
    );
  }
}
