import 'package:flutter/material.dart';

class ScheduleSection extends StatelessWidget {
  const ScheduleSection({super.key});

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
            "Schedule Your Order",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.calendar_today),
            title: Text("Choose Date"),
            trailing: Text("Today"),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.access_time),
            title: Text("Choose Time"),
            trailing: Text("10:30"),
          ),
        ],
      ),
    );
  }
}
