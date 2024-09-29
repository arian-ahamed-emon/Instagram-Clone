import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/screens/bottom_navbar_home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavbarHomeScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildSplashScreen(),
    );
  }
  Stack buildSplashScreen() {
    return Stack(fit: StackFit.expand, children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'from',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/meta-logo.png',
                height: 30,
              )
            ],
          ),
          const SizedBox(
            height: 90,
          ),
        ],
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 130,
            ),
          ],
        ),
      ),
    ]);
  }
}
