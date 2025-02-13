import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/core/dummy_datas/dummy_feed.dart';
import 'package:expertease/features/Feed/presentation/pages/new_post.dart';
import 'package:expertease/features/Feed/presentation/widget/bottom_bar.dart';
import 'package:expertease/features/Feed/presentation/widget/post_item.dart';
import 'package:expertease/features/Feed/presentation/widget/search.dart';
import 'package:expertease/features/client_display/presentation/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80.h,
        flexibleSpace: SafeArea(
          child: Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Container(
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
                              "assets/images/onboarding1.png",
                              width: 40.w,
                              height: 40.h,
                            ),
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
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 24.w),
                      Container(
                        alignment: Alignment.center,
                        height: 40.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(44.w),
                          color: const Color.fromARGB(255, 217, 223, 228),
                        ),
                        child:GestureDetector(
                          onTap: (){
                            context.go("/chatbot");
                          },
                          child:  Icon(
                          Icons.android,
                          color: ThemeColors.primary,
                        ),
                      ),),
                      SizedBox(width: 10.w),
                      Container(
                        alignment: Alignment.center,
                        height: 40.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(44.w),
                          color: const Color.fromARGB(255, 217, 223, 228),
                        ),
                        child: Icon(
                          Icons.notifications,
                          color: ThemeColors.primary,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SearchBox(
              hintText: "Write what you want here...",
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return NewPost();
                  }),
                );
              },
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
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
