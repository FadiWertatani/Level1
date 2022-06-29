import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lvl1/ListComponent.dart';

class CampScreen extends StatefulWidget {
  const CampScreen({Key? key}) : super(key: key);

  @override
  State<CampScreen> createState() => _CampScreenState();
}

class _CampScreenState extends State<CampScreen> {
  List<String> activityName = ['camping', 'hiking', 'swimming'];
  List<IconData> activityIcon = [
    Icons.hiking,
    Icons.hiking_outlined,
    Icons.hiking_sharp,
  ];
  bool isActive = true;
  bool isChecked = false;
  int currentActivityClicked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadiusDirectional.all(
                  Radius.circular(20.0),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: double.infinity,
              height: 50.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 70.0,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => activityContainer(index),
                itemCount: 3,
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget activityContainer(int index) => GestureDetector(
        onTap: () {
          setState(() {
            isActive = !isActive;
          });
        },
        child: defaultActivity(
          activityIcon: activityIcon[index],
          activityText: activityName[index],
          isActive: isActive,
        ),
      );
}
