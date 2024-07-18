import 'package:finsireapp/home_screen.dart';
import 'package:flutter/material.dart';

class GridViewer extends StatelessWidget {
  const GridViewer({
    super.key,
    required this.margins,
    required this.paddings,
    required this.textColor,
  });

  final EdgeInsets margins;
  final EdgeInsets paddings;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: GridView.count(
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
        childAspectRatio: 1,
        children: [
          Container(
              margin: margins,
              padding: paddings,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 223, 149, 106),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerHeader(
                    title: "TIME",
                    textColor: textColor,
                    iconColor: const Color.fromARGB(179, 241, 131, 76),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset('lib/assets/icons/clock.png')),
                      Text(
                        "6 : 24",
                        style: TextStyle(color: textColor, fontSize: 60),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Global avg, read time\nfor your  progress 7:28\n",
                              style: TextStyle(
                                  fontSize: 14,
                                  wordSpacing: 4,
                                  color: textColor)),
                          TextSpan(
                              text: "23% faster",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  wordSpacing: 4,
                                  color: textColor))
                        ])),
                  )
                ],
              )),
          Container(
              margin: margins,
              padding: paddings,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 181, 242, 107),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerHeader(
                    title: "STREAK",
                    textColor: textColor,
                    iconColor: const Color.fromARGB(255, 149, 227, 53),
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            'lib/assets/icons/streak.png',
                          )),
                      Text(
                        "7",
                        style: TextStyle(color: textColor, fontSize: 60),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Day streak, come back\ntomorrow keep it up!\n",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: textColor,
                                  wordSpacing: 4)),
                          TextSpan(
                              text: "19% more consistent",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  wordSpacing: 4,
                                  color: textColor))
                        ])),
                  )
                ],
              )),
          Container(
              margin: margins,
              padding: paddings,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 202, 159, 254),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerHeader(
                    title: "LEVEL",
                    textColor: textColor,
                    iconColor: const Color.fromARGB(255, 182, 135, 244),
                  ),
                  Row(
                    //  mainAxisAlignment: MainAxisAlignment.,
                    children: [
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            'lib/assets/icons/reward.png',
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "2",
                        style: TextStyle(color: textColor, fontSize: 60),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "145 reader points to\nlevel up!\n",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: textColor,
                                  wordSpacing: 4)),
                          TextSpan(
                              text: "Top 5% for this book",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  wordSpacing: 4,
                                  color: textColor))
                        ])),
                  )
                ],
              )),
          Container(
              margin: margins,
              padding: paddings,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 148, 218, 251),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerHeader(
                    title: "Badges",
                    textColor: textColor,
                    iconColor: const Color.fromARGB(255, 117, 200, 239),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset('lib/assets/icons/idea.png')),
                      SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset('lib/assets/icons/badge.png')),
                      SizedBox(
                          height: 35,
                          width: 35,
                          child:
                              Image.asset('lib/assets/icons/connection.png')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset('lib/assets/icons/timer.png')),
                      SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset('lib/assets/icons/bookmark.png')),
                      SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset('lib/assets/icons/like.png')),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
