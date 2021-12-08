import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Positioned cardTitleBuild(BuildContext context, int index) {
  return Positioned(
    top: 25,
    left: 0,
    child: Container(
      height: MediaQuery.of(context).size.height * 0.015,
      width: MediaQuery.of(context).size.width * 0.14,
      decoration: const BoxDecoration(
          color: Color(0xffEAE9E5),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(6))),
      child: Text(
        index % 2 == 0 ? "BEGINNER" : "ADVANCED",
        style: TextStyle(
          fontSize: 9,
          color: index % 2 == 1 ? Color(0xffFE5A5E) : Color(0xff087E8B),
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
