import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobileapp1/app_colors.dart';
import 'package:mobileapp1/screens/add_task.dart';
import 'package:mobileapp1/screens/alltasks.dart';
import 'package:mobileapp1/widgets/button_widget.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.infinity,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/welcome.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: "Hello",
                    style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                      text: "\nStart your Tasks",
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold))
                ])),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            InkWell(
              onTap: () {
                Get.to(()=>AddTask(), transition.zoom duration: Duration(miliseconds:500));
              },
              child: ButtonWidget(
                  bgcolor: AppColors.mainColor,
                  text: "Add Task",
                  textColor: Colors.white),
            ),
            InkWell(
              onTap: () {
                Get.to(() => AllTasks(),
                    transition: Transition.fade,
                    duration: Duration(seconds: 1));
              },
              child: ButtonWidget(
                  bgcolor: Colors.white,
                  text: "View All",
                  textColor: AppColors.smallTextColor),
            )
          ],
        ),
      ),
    );
  }
}
