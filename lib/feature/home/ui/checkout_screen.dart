import 'package:flutter/material.dart';
import 'package:market_app/core/helpers/spacing.dart';
import 'package:market_app/feature/home/ui/widgets/checkout_section/checkout_screen_body.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          title: Text(
            'Checkout',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          actions: [Icon(Icons.receipt_long), horizontalSpace(16)],
        ),
        body: CheckoutScreenBody(),
      ),
    );
  }
}
