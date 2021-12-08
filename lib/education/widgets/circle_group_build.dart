import 'package:flutter/material.dart';

Row circleGroupBuild() {
  return Row(children: [
    Container(
      height: 7,
      width: 7,
      decoration:
          const BoxDecoration(color: Color(0xffD9D6CD), shape: BoxShape.circle),
    ),
    const SizedBox(width: 5),
    Container(
      height: 7,
      width: 7,
      decoration:
          const BoxDecoration(color: Color(0xff087E8B), shape: BoxShape.circle),
    ),
    const SizedBox(width: 5),
    Container(
      height: 7,
      width: 7,
      decoration:
          const BoxDecoration(color: Color(0xffD9D6CD), shape: BoxShape.circle),
    ),
    const SizedBox(width: 5),
    Container(
      height: 7,
      width: 7,
      decoration:
          const BoxDecoration(color: Color(0xffD9D6CD), shape: BoxShape.circle),
    ),
  ]);
}
