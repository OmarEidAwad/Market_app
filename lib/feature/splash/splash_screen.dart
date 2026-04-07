import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:market_app/core/helpers/spacing.dart';
import 'package:market_app/core/routing/app_router.dart';
import 'package:market_app/feature/splash/widgets/animation_line.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 2000), () {
      context.pushNamed(AppRoute.homeScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/logo/logo.svg",
              width: 188,
            ),
          ),
          verticalSpace(10),
          AnimationLine(),
        ],
      ),
    );
  }
}
