import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultActivity({
  required IconData activityIcon,
  required String activityText,
  required bool isActive,
}) =>
    Container(
      width: 70.0,
      child: Column(
        children: [
          Icon(
            activityIcon,
            color: isActive ? Colors.black : Colors.grey,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            activityText,
            style: TextStyle(
              color: isActive ? Colors.black : Colors.grey,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            height: 3.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: isActive ? Colors.black : Colors.white,
              borderRadius: BorderRadiusDirectional.all(
                Radius.circular(50.0),
              ),
            ),
          ),
        ],
      ),
    );
