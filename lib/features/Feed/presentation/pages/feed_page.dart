import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/core/dummy_datas/dummy_feed.dart';
import 'package:expertease/features/Feed/presentation/widget/post_item.dart';
import 'package:expertease/features/Feed/presentation/widget/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(44.w),
                    color: Colors.blue,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(44.w),
                    child: Image.asset(
                      "assets/images/logo.jpg", 
                      width: 40.w, 
                      height: 40.h,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Posts',
                      style: TextStyle(
                          color: ThemeColors.primary,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(width: 24.w),
                Container(
                  alignment: Alignment.center,
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(44.w),
                    color: Colors.blue,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(44.w),
                    child: Image.asset(
                      "assets/images/logo.jpg",
                      width: 40.w,
                      height: 40.h,
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  alignment: Alignment.center,
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(44.w),
                    color: Colors.blue,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(44.w),
                    child: Image.asset(
                      "assets/images/logo.jpg",
                      width: 40.w,
                      height: 40.h,
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 15.h,
            ),
            SearchBox(
              hintText: "Write what you want here...",
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return PostItem(post: posts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
