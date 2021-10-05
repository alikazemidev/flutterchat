import 'package:flutter/material.dart';

class Roundedbutton extends StatelessWidget {
  const Roundedbutton({
    Key? key,
    required this.clr,
    required this.onpressed,
    required this.text,
  }) : super(key: key);
  final Color clr;
  final VoidCallback onpressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: clr,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
