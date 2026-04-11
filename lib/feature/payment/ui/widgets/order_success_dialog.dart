import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:market_app/core/routing/app_router.dart';
import 'package:market_app/core/theiming/colors.dart';

class OrderSuccessDialog extends StatelessWidget {
  const OrderSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 70.w,
              height: 70.h,
              decoration: const BoxDecoration(
                color: Color(0xffE8F8EE),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check,
                color:
                //Colors.white,
                 ColorsManager.primary
               , size: 40,
              ),
            ),

            const SizedBox(height: 16),

            /// Title
            const Text(
              "Order Placed",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            /// Subtitle
            const Text(
              "Your order has been placed successfully.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            /// Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsManager.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  context.pushNamed(AppRoute.homeScreen);
                },
                child: const Text("Continue",style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}