import 'package:expertease/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostItem extends StatefulWidget {
  final Map<String, String> post;

  PostItem({required this.post});

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  bool _isExpanded = false;
  bool isIconSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 2,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(widget.post['profileImage']!),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.post['userName']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              color: ThemeColors.primary,
                            ),
                          ),
                          SizedBox(width: 7.w),
                          Container(
                              height: 28.h,
                              width: 1.3.w,
                              color: Colors.black87),
                          SizedBox(width: 7.w),
                          Text(
                            widget.post['jobTitle']!,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: ThemeColors.primary,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        widget.post['createdTime']!,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: ThemeColors.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: Text(
                  widget.post['content']!,
                  style: TextStyle(fontSize: 12.sp),
                  maxLines: _isExpanded ? null : 3,
                  overflow: _isExpanded
                      ? TextOverflow.visible
                      : TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 10.h),
              if (!_isExpanded && widget.post['content']!.length > 100)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpanded = true;
                    });
                  },
                  child: Row(
                    children: [
                      Text('See more', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
              SizedBox(height: 10.h),
              Image.asset(
                widget.post['postImage']!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.thumb_up_off_alt,
                      color: isIconSelected ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isIconSelected = !isIconSelected;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.comment, color: Colors.grey),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.report, color: Colors.grey),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
