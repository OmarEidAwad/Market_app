import 'package:flutter/material.dart';
import 'package:market_app/core/helpers/spacing.dart';
import 'package:market_app/core/theiming/colors.dart';
import 'package:market_app/feature/home/ui/widgets/checkout_section/delivery_options_section.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({
    super.key,

   required this.onChanged,
    required this.isPaymentSelected,
  });

  final dynamic Function(int) onChanged;
  final int isPaymentSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Column(
        children: [const Text(
            "Payment",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),verticalSpace(10),
          radioTile("Cash", 0, isPaymentSelected, onChanged),
          radioTile("Apple Pay", 1, isPaymentSelected, onChanged),
          radioTile("Visa", 2, isPaymentSelected, onChanged),

          //Row( mainAxisSize: MainAxisSize.max,
          //     children: [
          //   Expanded(child: CheckboxListTile(title: Text("Cash"),value: isCashedSelected,activeColor: ColorsManager.primary,onChanged: onChanged,))
          // ],
          //     ),
          //     Row(
          //       children:  [
          //         Icon(Icons.payment),
          //         SizedBox(width: 10),
          //         Text(PaymentName),
          //         Spacer(),
          //         Icon(Icons.chevron_right),
          //       ],
          //     ),verticalSpace(12),
          //        Row(
          //       children:  [
          //         Icon(Icons.payment),
          //         SizedBox(width: 10),
          //         Text(PaymentName2),
          //         Spacer(),
          //         Icon(Icons.chevron_right),
          //       ],
          //     ),
        ],
      ),
    );
  }
}
