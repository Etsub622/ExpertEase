import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/core/routes/path.dart';
import 'package:expertease/features/Splash_screens/presentation/widgets/next_button.dart';
import 'package:expertease/features/payment/presentation/widget/more.dart';
import 'package:expertease/features/payment/presentation/widget/suggested.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                   context.go(AppPath.schedule);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    // color: ThemeColors.primary,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Suggested Payment Methods',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: ThemeColors.primary),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomSuggested(
                  text: 'Chapa',
                  icon: Icon(Icons.credit_card),
                  path: '5231',
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomSuggested(
                  text: 'Credit Card',
                  icon: Icon(Icons.credit_card),
                  path: '5232',
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomSuggested(
                  text: 'Debit Card',
                  icon: Icon(Icons.credit_card),
                  path: '5231',
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'More payment options',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: ThemeColors.primary),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                MoreOptions(
                  icon: Icon(Icons.credit_card),
                  text: 'UPI',
                ),
                SizedBox(
                  height: 15.h,
                ),
                MoreOptions(
                  icon: Icon(Icons.credit_card),
                  text: 'Credit/Debit Card',
                ),
                SizedBox(
                  height: 10.h,
                ),
                NextButton(
                    widths: double.infinity, text: 'Continue', onTap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}