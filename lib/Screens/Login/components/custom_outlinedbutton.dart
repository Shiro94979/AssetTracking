import 'package:flutter/material.dart';

class CustomOutlindeButton extends StatelessWidget {
  final String? text;
  final Function? press;

  CustomOutlindeButton({this.text, this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: OutlinedButton(
        onPressed: () => press!(),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.green, width: 3),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          padding: EdgeInsets.all(0.0),
          textStyle: TextStyle(fontSize: 18),
        ),
        child: Ink(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 320.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green),
            ),
          ),
        ),
      ),
    );
  }
}
