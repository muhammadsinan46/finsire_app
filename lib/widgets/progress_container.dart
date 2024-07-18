

import 'package:finsireapp/home_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProgressContainer extends StatelessWidget {
   ProgressContainer({
    super.key,
    required this.margins,
    required this.paddings,
    required this.textColor,
    required this.progress,
    required this.readCount
  });

  final EdgeInsets margins;
  final EdgeInsets paddings;
  final Color textColor;
  final double progress;
  int readCount;




  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margins,
      padding: paddings,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color:const Color.fromARGB(250, 255, 222, 103),
      ),
      height: 220,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ContainerHeader(
            textColor: textColor,
            title: "PROGRESS",
            iconColor:const Color.fromARGB(255, 239, 196, 77),
          ),
          Row(
            children: [
              SizedBox(
                  height: 35,
                  width: 35,
                  child: Image.asset('lib/assets/icons/readbook.png')),
           const   SizedBox(
                width: 10,
              ),
              Text(
                "$readCount",
                style: TextStyle(color: textColor, fontSize: 60),
              ),
            const  SizedBox(
                width: 10,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Out of 1,225 pages\n",
                    style: TextStyle(color: textColor)),
                TextSpan(
                    text: "#5 among friends",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: textColor))
              ]))
            ],
          ),
       const   SizedBox(
            height: 10,
          ),
          LinearProgressIndicator(
            borderRadius: BorderRadius.circular(10),
            value: progress,
            minHeight: 8,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation(textColor),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                UserImages(
                  imageName: 'lib/assets/images/user.jpg',
                  margins: margins,
                ),
            const    SizedBox(
                  width: 50,
                ),
                UserImages(
                  imageName: 'lib/assets/images/user2.jpg',
                  margins: margins,
                ),
               const SizedBox(
                  width: 10,
                ),
                UserImages(
                  imageName: 'lib/assets/images/user3.jpg',
                  margins: margins,
                ),
                UserImages(
                  imageName: 'lib/assets/images/user4.jpg',
                  margins: margins,
                ),
                UserImages(
                  imageName: 'lib/assets/images/user5.jpg',
                  margins: margins,
                ),
                UserImages(
                  imageName: 'lib/assets/images/user6.jpg',
                  margins: margins,
                ),
                UserImages(
                  imageName: 'lib/assets/images/user7.jpg',
                  margins: margins,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}