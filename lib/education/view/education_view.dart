import 'package:beautifulflutter/education/widgets/best_skills_card.dart';
import 'package:beautifulflutter/education/widgets/circle_group_build.dart';
import 'package:beautifulflutter/education/widgets/education_build.dart';
import 'package:beautifulflutter/education/widgets/history_card.dart';
import 'package:beautifulflutter/education/widgets/first_card.dart';
import 'package:beautifulflutter/education/widgets/title_build.dart';
import 'package:beautifulflutter/education/widgets/trending_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class EducationView extends StatelessWidget {
  EducationView({Key? key}) : super(key: key);
  List<String> categoryList = ["In Progress", "Saved", "Coaching", "Homework"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAE9E5),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Color(0xffFCFCFD)),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.12,
            child: BottomNavigationBar(
              // currentIndex: seciliSayfa,
              // onTap: sayfaDegistir,
              type: BottomNavigationBarType.fixed,
              fixedColor: Colors.black,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/home.png"),
                  title: Text(
                    'Home',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/search.png"),
                  title: Text(
                    'Search',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/activity.png"),
                  title: Text(
                    'Activity',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/classroom.png"),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Text(
                      'Classroom',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/logo.svg"),
                  Image.asset("assets/img_profile.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
              ),
              child: SizedBox(
                height: 52,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            categoryList[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: index == 0
                                    ? Colors.black
                                    : const Color(0xffB9B5A8),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            firstCardBuild(),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleBuild("WATCH HISTORY"),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffB9B5A8)),
                      child: Center(
                        child: SvgPicture.asset("assets/Path 10.svg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            historyCardBuild(),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleBuild("TRENDING NOW"),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: circleGroupBuild(),
                  ),
                ],
              ),
            ),
            trendingCardBuild(),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleBuild("BEST SKILLS"),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: circleGroupBuild(),
                  ),
                ],
              ),
            ),
            bestSkillsCardBuild(),
            educationBuild(context),
          ],
        ),
      ),
    );
  }
}
