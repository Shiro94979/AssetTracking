import 'package:flutter/material.dart';

class TextFormFieldGlobal extends StatelessWidget {
  final String? fieldText;
  final Widget? fieldIcon;
  // TextEditingController? control;

  TextFormFieldGlobal({
    this.fieldText,
    this.fieldIcon,
    /*this.control*/
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: fieldIcon,
          hintText: fieldText,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(5.0),
          ),
          focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3.0, color: Colors.green),
                  borderRadius: BorderRadius.circular(5.0),
                )
        ),
        // controller: control,
      ),
    );
  }
}
