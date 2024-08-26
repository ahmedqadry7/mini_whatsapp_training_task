// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextFormPasswordWidget extends StatefulWidget {
  bool obscureText;
  TextFormPasswordWidget({super.key, required this.obscureText});

  @override
  State<TextFormPasswordWidget> createState() => _TextFormPasswordWidgetState();
}

class _TextFormPasswordWidgetState extends State<TextFormPasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          style: Theme.of(context).textTheme.bodySmall,
          cursorColor: Colors.black,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            errorStyle: TextStyle(
                color: Colors.red, fontSize: 12, fontWeight: FontWeight.w500),
            focusColor: Colors.black,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  widget.obscureText = !widget.obscureText;
                });
              },
              icon: Icon(
                widget.obscureText ? Icons.visibility : Icons.visibility_off,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
