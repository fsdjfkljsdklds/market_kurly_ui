import 'package:flutter/material.dart';
import 'package:market_kurly_ui/mycustomscroll.dart';
import 'routes.dart';
import 'screens/splash/splash_screen.dart';
import 'theme.dart';

void main() {
  runApp(MarketKurly());
}

class MarketKurly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior:MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Market Kurly UI',
      initialRoute: SplashScreen.routeName,
      routes: route,
      theme: theme(),
    );
  }
}
