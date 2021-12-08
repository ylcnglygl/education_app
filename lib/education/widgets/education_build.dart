import 'package:flutter/material.dart';

Container educationBuild(BuildContext context) {
  return Container(
    height: 450,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 110 / 375,
                          child: const Text(
                            "Educat coaching",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          )),
                      Row(
                        children: const [
                          Chip(
                            label: Text(
                              "GOLD",
                              style: TextStyle(letterSpacing: 4, fontSize: 9),
                            ),
                            backgroundColor: Color(0xffC1AA6A),
                          ),
                          SizedBox(width: 7),
                          Text(
                            "MASTERCLASS",
                            style: TextStyle(letterSpacing: 4, fontSize: 9),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Image.asset(
                    "assets/educate/educate.png",
                    width: 180,
                    height: 200,
                  ),
                ),
              ],
            ),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xff087E8B),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20))),
            ),
          ],
        ),
        // Positioned(
        //     top: 150,
        //     left: 25,
        //     child: Image.asset(
        //       "assets/educate/educatePic.png",
        //       height: 213,
        //     )),
      ],
    ),
  );
}
