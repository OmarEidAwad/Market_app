import 'package:flutter/material.dart';
import 'package:market_app/core/theiming/colors.dart';

class DeliveryOptionsSection extends StatelessWidget {
  final int selected;
  final Function(int) onChanged;

  const DeliveryOptionsSection({
    super.key,
    required this.selected,
    required this.onChanged,
  });

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
        children: [
          const Text(
            "Delivery Options",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),

          radioTile("Priority (20 mins)", 0, selected, onChanged),
          radioTile("Standard (30 - 45 mins)", 1, selected, onChanged),
          radioTile("Schedule", 2, selected, onChanged),

          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text("Estimated delivery: 30 - 45 mins"),
          ),
        ],
      ),
    );
  }

 
}
 Widget radioTile(String text, int index, int group, Function(int) onChanged) {
    return Row(
      children: [
        Radio(
          activeColor: ColorsManager.primary,
          value: index,
          groupValue: group,
          onChanged: (val) => onChanged(val as int),
        ),
        Expanded(child: Text(text)),
      ],
    );
  }