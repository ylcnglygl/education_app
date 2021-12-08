import 'package:beautifulflutter/education/widgets/card_title_build.dart';
import 'package:flutter/material.dart';

Container historyCardBuild() {
  List<String> watchHistoryImages = [
    "history1",
    "history2",
    "history3",
    "history1",
    "history2",
    "history3"
  ];

  return Container(
    height: 206,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: watchHistoryImages.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: index == 0 ? 24.0 : 12.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/history/${watchHistoryImages[index]}.png",
                          height: 146,
                          width: 128,
                        ),
                        cardTitleBuild(context, index),
                      ],
                    ),
                    const Text("asd"),
                  ],
                ),
              ),
            ],
          );
        }),
  );
}
