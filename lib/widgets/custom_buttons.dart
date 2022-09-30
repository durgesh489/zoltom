import 'package:flutter/material.dart';
import 'package:zoltom/constants/colors.dart';
import 'package:zoltom/widgets/custom_widgets.dart';

Widget PrimaryButton(BuildContext context, Function fun, String buttonText) {
  return MaterialButton(
    minWidth: fullWidth(context),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    height: 50,
    color: mc,
    onPressed: () {
      fun();
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Text(
          buttonText,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        Icon(
          Icons.arrow_forward,
          color: white,
        )
      ],
    ),
  );
}

Widget SecondaryButton(
  Function fun,
  String buttonText,
  Color? color,
  Color? textColor,
  double width,
  double height
) {
  return MaterialButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    height:height,
    minWidth: width,
    color: color,
    onPressed: () {
      fun();
    },
    child: Text(
      buttonText,
      style: TextStyle(fontSize: 16,color: textColor),
    ),
  );
}
