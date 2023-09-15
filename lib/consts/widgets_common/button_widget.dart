import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:martbuz_app/consts/consts.dart';

Widget button({onPress, color, textColor, String? title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    onPressed: onPress,
    child: title!
    .text
    .color(textColor)
    .fontFamily(bold)
    .make(),
  );
}