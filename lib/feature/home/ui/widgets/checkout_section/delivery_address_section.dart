import 'package:flutter/material.dart';
import 'package:market_app/core/theiming/colors.dart';

class DeliveryAddressSection extends StatelessWidget {
  const DeliveryAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Delivery Address",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: ColorsManager.primary,
                child: Icon(Icons.person, color: Colors.white, size: 16),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Omar Eid",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "123 King Fahd Rd, Dammam",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Text("Change"),
              Icon(Icons.chevron_right),
            ],
          ),
        ],
      ),
    );
  }
}