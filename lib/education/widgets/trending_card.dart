import 'package:beautifulflutter/education/widgets/card_title_build.dart';
import 'package:flutter/material.dart';

Container trendingCardBuild() {
  List<String> trendingImages = [
    "trending1",
    "trending2",
    "trending3",
    "trending1",
    "trending2",
    "trending3"
  ];

  return Container(
    height: 206,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trendingImages.length,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/trending/${trendingImages[index]}.png",
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
