import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
      {Key? key,
      required this.val,
      required this.textColor,
      required this.bgcolor,
      required this.function})
      : super(key: key);

  String val;
  int bgcolor;
  int textColor;
  var function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          this.function();
        },
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          minimumSize: const Size(90, 90),
          primary: Color(bgcolor),
        ),
        child: Text(
          val,
          style: TextStyle(fontSize: 30, color: Color(textColor)),
        ));
  }
}
