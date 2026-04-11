import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:market_app/feature/home/ui/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              SvgPicture.asset('assets/icons/motor.svg', width: 12.w, height: 12),
              Text(
                "   61 Hopper street.. ",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Icon(Icons.keyboard_arrow_down_rounded, size: 20),
              Spacer(),
              SvgPicture.asset('assets/icons/basket.svg', width: 16.w, height: 16),
            ],
          ),
          centerTitle: true,
      
          //  leading: SizedBox.shrink(),
        ),
        body: HomeScreenBody(),
      ),
    );
  }
}
