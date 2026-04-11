import 'package:flutter/material.dart';
import 'package:market_app/core/helpers/spacing.dart';
import 'package:market_app/feature/payment/ui/widgets/payment_screen_body.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text(
          'Payment',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.receipt_long), horizontalSpace(16)],
      ),
      body: PaymentScreenBody(),
    );
  }
}
