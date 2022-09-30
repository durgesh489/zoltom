import 'package:flutter/material.dart';
import 'package:zoltom/constants/colors.dart';

Widget RoundedIcon(IconData icon) {
  return SizedBox(
    width: 45,
    height: 45,
    child: Card(
      elevation: 5,
      color: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Icon(icon),
    ),
  );
}
