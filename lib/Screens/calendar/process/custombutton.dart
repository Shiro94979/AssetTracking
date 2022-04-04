import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Function? press;
  final Color? colors;
  final Color? colortext;

  CustomButton({this.text, this.press, this.colors,this.colortext});

  bool inButtonActive = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 100,
      child: ElevatedButton(
        onPressed: () => press!(),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(colortext),
          backgroundColor: MaterialStateProperty.all(colors),
          shape:
              MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0))),
          padding: MaterialStateProperty.all(EdgeInsets.all(0.0)),
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 12)),
        ),
        child: Container(
          decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [
              //     colors!()
              //     // Color.fromARGB(255, 103, 224, 113),
              //     // Color.fromARGB(255, 47, 153, 88)
              //   ],
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              // ),
              borderRadius: BorderRadius.circular(30.0)),
          child:  Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        
      ),
    );
  }
}
