

import 'package:finsireapp/count_repository.dart';
import 'package:finsireapp/widgets/grid_viewer.dart';
import 'package:finsireapp/widgets/progress_container.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

   int readCount =0;

  CountRepository countrepos =CountRepository();


  @override
  void initState() {
      getCount();
    super.initState();
  }

  getCount()async{
   int count=    await countrepos.getCount();

   setState(() {
      readCount = count;
   });
  }

  @override
  Widget build(BuildContext context) {
    const margins = EdgeInsets.all(5);
    const paddings = EdgeInsets.all(15);
    const textColor = Colors.black;
    const double progress = 545 / 1000;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize:const Size.fromHeight(130),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             const   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('lib/assets/images/user.jpg'),
                    ),
                    SizedBox(width: 5,),
                    Text("Amyis reader stats", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)
                  ],
                ),
                Container(
                    margin: margins,
                    height: 50,
                    width: MediaQuery.sizeOf(context).width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset(
                                  'lib/assets/images/warpeacecover.jpg',
                                  fit: BoxFit.contain,
                                )),
                          const  SizedBox(
                              width: 10,
                            ),
                           const  Text(
                              "War and Peace",
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius:const BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            color: const Color.fromARGB(79, 158, 158, 158),
                            height: 40,
                            width: 40,
                            child:const  Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProgressContainer(
              readCount: readCount,
                margins: margins,
                paddings: paddings,
                textColor: textColor,
                progress: progress),
           const GridViewer(
                margins: margins, paddings: paddings, textColor: textColor),
            SizedBox(
              height: 70,
              width: MediaQuery.sizeOf(context).width - 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                 
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),    color:const Color.fromARGB(255, 139, 147, 201),),
                    height: 50,
                      width: MediaQuery.sizeOf(context).width-80,
                      child: const Center(
                        child: Text(
                                            "+ Add  friends",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                          ),
                      )),
                   Container(
          decoration: BoxDecoration(
              color:const Color.fromARGB(79, 158, 158, 158), borderRadius: BorderRadius.circular(15)),
          height: 50,
          width: 50,
          child:const Center(
            child: Icon(
              Icons.file_upload_outlined,
              size: 28,
            ),
          ),
        ),
                ],
              ),
            ),
          const  Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:  EdgeInsets.only(left:15.0),
                child: Text("Leaderboard", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
              ))
          ],
        ),
      ),
    );
  }
}

class ContainerHeader extends StatelessWidget {
  const ContainerHeader(
      {super.key,
      required this.textColor,
      required this.title,
      required this.iconColor});

  final String title;

  final Color textColor;

  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18, color: textColor, fontWeight: FontWeight.w600),
        ),
        Container(
          decoration: BoxDecoration(
              color: iconColor, borderRadius: BorderRadius.circular(15)),
          height: 50,
          width: 50,
          child:const Center(
            child: Icon(
              Icons.file_upload_outlined,
              size: 28,
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class UserImages extends StatelessWidget {
  UserImages({super.key, required this.imageName, required this.margins});
  String imageName;
  EdgeInsets margins;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margins,
      child: CircleAvatar(
        backgroundColor:const Color.fromARGB(0, 158, 158, 158),
        backgroundImage: AssetImage(
          imageName,
        ),
      ),
    );
  }
}
