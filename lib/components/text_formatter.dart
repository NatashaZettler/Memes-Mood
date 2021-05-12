import 'package:flutter/material.dart';

Padding textFormatter(BuildContext context, String text, [double size]) {
  return Padding(
    padding: EdgeInsets.only(
      bottom: MediaQuery.of(context).size.width * 0.15,
      left: MediaQuery.of(context).size.width * 0.05,
      right: MediaQuery.of(context).size.width * 0.05,
    ),
    child: Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
        color: Colors.white,
        backgroundColor: Colors.black54,
        fontSize: size,
      ),
    ),
  );
}