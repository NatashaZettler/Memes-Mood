import 'package:flutter/material.dart';

BoxDecoration decoration() => BoxDecoration(
  gradient: linearGradient(),
);

BoxDecoration decorationWithBorder() => BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  gradient: linearGradient(),
);

LinearGradient linearGradient() => LinearGradient(colors: [Colors.purple, Colors.green]);