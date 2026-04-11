import 'package:flutter/material.dart';

class OrderSummarySection extends StatelessWidget {
  const OrderSummarySection({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Order Summary (12 items)",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          RowBetween("Subtotal", "\$40.25"),
          RowBetween("Bag fee", "\$0.25"),
          RowBetween("Service fee", "\$5.25"),
          RowBetween("Delivery", "\$0.00"),
          Divider(),
          RowBetween("Total", "\$49.00", bold: true),
        ],
      ),
    );
  }
}class RowBetween extends StatelessWidget {
  final String left;
  final String right;
  final bool bold;

  const RowBetween(this.left, this.right, {this.bold = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(left),
          Text(
            right,
            style: TextStyle(
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
