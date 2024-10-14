import 'package:chatapp/screens/homescreen.dart';
import 'package:chatapp/theme/fonts/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/svgs/chat-round-line-svgrepo-com.svg",
            width: 80.w,
            height: 80.h,
            color: Theme.of(context).colorScheme.tertiary,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "Welcome To chatak!",
            style: textstyle(
                Theme.of(context).colorScheme.tertiary, 25, FontWeight.bold),
          ),
          SizedBox(
            height: 100.h,
          ),
          Text(
            " Start chatting with your friends and family in real-time. ",
            style: textstyle(
                Theme.of(context).colorScheme.tertiary, 13, FontWeight.bold),
          ),
          SizedBox(
            height: 70.h,
          ),
          InkWell(
            splashColor: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Homescreen();
              }));
            },
            child: Container(
              height: 50.h,
              width: 200.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).primaryColor),
              child: Center(
                child: Text(
                  " Ready to Chat?",
                  style: textstyle(Theme.of(context).colorScheme.tertiary, 20,
                      FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
