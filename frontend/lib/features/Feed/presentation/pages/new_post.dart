import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/features/Feed/presentation/widget/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPost extends StatefulWidget {
  const NewPost({super.key});

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  TextEditingController postController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.keyboard_arrow_left,
                      color: ThemeColors.primary, size: 28),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'New Post',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: ThemeColors.primary),
                    ),
                  ),
                ),
                Icon(Icons.chat, color: ThemeColors.primary, size: 28),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/logo.png"),
              ),
              SizedBox(width: 10.w),
              Text(
                "Etsub Taye",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: ThemeColors.primary),
              ),
            ]),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 400.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: ThemeColors.primary,
                ),
              ),
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "What's on your mind?",
                  hintStyle: TextStyle(color: ThemeColors.primary),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ThemeColors.primary,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  'Post',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ),
        ]),
      )),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
