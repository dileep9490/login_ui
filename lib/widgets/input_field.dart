import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final double left;
  final double top;
  final double right;
  final double bottom;
  final String hintText;
  const InputField(
      {Key? key,
      required this.left,
      required this.top,
      required this.right,
      required this.bottom,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
