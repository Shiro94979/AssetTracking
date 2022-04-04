import 'package:flutter/material.dart';

class TextFormFieldPassGlobal extends StatefulWidget {
  final String? fieldText;
  final Widget? fieldIcon;
  TextFormFieldPassGlobal({this.fieldIcon, this.fieldText});

  @override
  State<TextFormFieldPassGlobal> createState() =>
      _TextFormFieldPassGlobalState(fieldText!, fieldIcon!);
}

class _TextFormFieldPassGlobalState extends State<TextFormFieldPassGlobal> {
  _TextFormFieldPassGlobalState(String fieldText, Widget fieldIcon);
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      child: TextFormField(
        obscureText: _isObscure,
        autofocus: false,
        decoration: InputDecoration(
            prefixIcon: widget.fieldIcon,
            hintText: widget.fieldText,
            fillColor: Colors.white,
            filled: true,
            suffixIcon: IconButton(
              icon: Icon(
                _isObscure ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: Colors.white, width: 3.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.green),
              borderRadius: BorderRadius.circular(5.0),
            )),
      ),
    );
  }
}
