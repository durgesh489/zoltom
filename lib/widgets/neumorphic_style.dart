import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

NeumorphicStyle NeumStyle() {
  return NeumorphicStyle(
    depth: 5,
    shape: NeumorphicShape.flat,
    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
    intensity: 1,
    shadowLightColor: Colors.grey[300],
    lightSource: LightSource.topLeft,
    color: Colors.white,
  );
}
