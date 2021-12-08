import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

SizedBox firstCardBuild() {
  List<String> photoList = [
    "photo1",
    "photo2",
    "photo1",
    "photo2",
    "photo1",
    "photo2"
  ];
  return SizedBox(
    height: 300,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: photoList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Stack(
              children: [
                Image.asset("assets/${photoList[index]}.png"),
                Positioned(
                  top: 190,
                  child: SizedBox(
                    width: 157,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Dieter Rams",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: index % 2 == 1
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "A Simple Guide to Pricing Your Virtual Products",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: index % 2 == 1
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 24.0,
                  bottom: 24.5,
                  child: LinearPercentIndicator(
                      width: 151.0,
                      lineHeight: 3.0,
                      percent: 0.4,
                      progressColor: Color(0xff2EAFBE),
                      backgroundColor: Color(0xffeae9e5)),
                ),
              ],
            ),
          );
        }),
  );
}
