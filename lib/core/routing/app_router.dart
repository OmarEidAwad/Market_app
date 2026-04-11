import 'package:go_router/go_router.dart';
import 'package:market_app/feature/home/ui/checkout_screen.dart';
import 'package:market_app/feature/home/ui/home_screen.dart';
import 'package:market_app/feature/payment/ui/payment_screen.dart';
import 'package:market_app/feature/splash/splash_screen.dart';

abstract class AppRoute {
  static const String splashScreen = "/";
  static const String homeScreen = "home";
  static const String checkoutScreen = "checkout";
    static const String paymentScreen = "Payment";

  

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: splashScreen,
        builder: (context, state) => Splash(),
      ),
      GoRoute(
        path: "/home",
        name: homeScreen,
        builder: (context, state) => HomeScreen(),
      ),
     
      GoRoute(
        path: "/checkout",
        name: checkoutScreen,
        builder: (context, state) => CheckoutScreen(),
      ),
       GoRoute(
        path: "/Payment",
        name: paymentScreen,
        builder: (context, state) => PaymentScreen(),
      ),
    
    ],
  );
}
