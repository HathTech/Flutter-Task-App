import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final Text text;
  final button;

  Heading({Key key, @required this.button, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: text,
        trailing: Container(
          height: 40,
          width: 40,
          child: button,
        ),
      ),
    );
  }
}
