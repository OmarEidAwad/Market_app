import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market_app/core/routing/app_router.dart';
import 'package:market_app/feature/home/ui/widgets/checkout_section/delivery_address_section.dart';
import 'package:market_app/feature/home/ui/widgets/checkout_section/delivery_options_section.dart';
import 'package:market_app/feature/home/ui/widgets/checkout_section/order_summary.dart';
import 'package:market_app/feature/home/ui/widgets/checkout_section/payment_section.dart';
import 'package:market_app/feature/home/ui/widgets/checkout_section/schedule_section.dart';
import 'package:market_app/feature/payment/ui/widgets/order_success_dialog.dart';

class CheckoutScreenBody extends StatefulWidget {
  const CheckoutScreenBody({super.key});

  @override
  State<CheckoutScreenBody> createState() => _CheckoutScreenBodyState();
}

class _CheckoutScreenBodyState extends State<CheckoutScreenBody> {
  int selectedDelivery = 1;
  int selectedPayment = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const DeliveryAddressSection(),
                  DeliveryOptionsSection(
                    selected: selectedDelivery,
                    onChanged: (index) {
                      setState(() {
                        selectedDelivery = index;
                      });
                    },
                  ),
                  const ScheduleSection(),
                  const OrderSummarySection(),
                  PaymentSection(
                 
                    isPaymentSelected: selectedPayment,
                    onChanged: (index) {
                      setState(() {
                        selectedPayment = index;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              onTap: () { selectedPayment == 0? 
   showDialog(
    context: context,
    builder: (_) => const OrderSuccessDialog(),
  ): context.pushNamed(AppRoute.paymentScreen);



              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Place Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
