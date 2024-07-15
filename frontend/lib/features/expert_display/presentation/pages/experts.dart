import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/features/Feed/presentation/widget/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ExpertDisplay extends StatefulWidget {
  const ExpertDisplay({Key? key}) : super(key: key);

  @override
  _ExpertDisplayState createState() => _ExpertDisplayState();
}

class _ExpertDisplayState extends State<ExpertDisplay> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> _allUsers = [
    {
      'id': '1',
      'name': 'Hana Guta',
      'jobTitle': 'Lawyer',
      'profileImage': 'assets/images/feed1.png',
      'rating': '5',
      'price': '\$20/hr',
    },
    {
      'id': '2',
      'name': 'Heran Eshetu',
      'jobTitle': 'Psychiatrist',
      'profileImage': 'assets/images/onboarding1.png',
      'rating': '4',
      'price': '\$15/hr',
    },
    {
      'id': '3',
      'name': 'Etsub Taye',
      'jobTitle': 'Neurologist',
      'profileImage': 'assets/images/onboarding2.png',
      'rating': '4',
      'price': '\$28/hr',
    },
    {
      'id': '4',
      'name': 'Dagimawi Misker',
      'jobTitle': 'Doctor',
      'profileImage': 'assets/images/onboarding1.png',
      'rating': '3',
      'price': '\$18/hr',
    },
    {
      'id': '5',
      'name': 'Etsub Taye',
      'jobTitle': 'Neurologist',
      'profileImage': 'assets/images/onboarding2.png',
      'rating': '4',
      'price': '\$28/hr',
    },
    {
      'id': '6',
      'name': 'Dagimawi Misker',
      'jobTitle': 'Doctor',
      'profileImage': 'assets/images/onboarding1.png',
      'rating': '3',
      'price': '\$18/hr',
    },
  ];

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    _controller.addListener(() => _runFilter(_controller.text));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _controller,
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                suffixIcon: IconButton(
                  icon: Icon(Icons.close, color: Colors.grey),
                  onPressed: () {
                    setState(() {
                      String currentText = _controller.text;
                      if (currentText.isNotEmpty) {
                        _controller.text =
                            currentText.substring(0, currentText.length - 1);
                        _controller.selection = TextSelection.fromPosition(
                            TextPosition(offset: _controller.text.length));
                      }
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: Colors.grey.shade400, width: 0.2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: Colors.grey.shade400, width: 0.5),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 3),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          context.go('/expert_detail', extra: _foundUsers[index]);
                        },
                        child: Card(
                          key: ValueKey(_foundUsers[index]["id"]),
                          color: Color.fromARGB(255, 237, 240, 245),
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      _foundUsers[index]['profileImage']),
                                ),
                                SizedBox(width: 12.w),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              _foundUsers[index]['name'],
                                              style: TextStyle(
                                                  color: ThemeColors.primary,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18.sp),
                                            ),
                                          ),
                                          _buildStarRating(
                                              _foundUsers[index]['rating']),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              _foundUsers[index]['jobTitle'],
                                              style: TextStyle(
                                                  color: ThemeColors.primary,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.sp),
                                            ),
                                          ),
                                          Text(
                                            _foundUsers[index]['price'],
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12.sp),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }

  Widget _buildStarRating(String ratingString) {
    double rating = double.parse(ratingString);
    int fullStars = rating.floor();
    bool hasHalfStar = (rating - fullStars) >= 0.5;

    return Row(
      children: List.generate(5, (index) {
        if (index < fullStars) {
          return Icon(Icons.star, color: Colors.orange, size: 13.w);
        } else if (index == fullStars && hasHalfStar) {
          return Icon(Icons.star_half, color: Colors.orange, size: 15.w);
        } else {
          return Icon(Icons.star_border, color: Colors.orange, size: 15.w);
        }
      }),
    );
  }
}
