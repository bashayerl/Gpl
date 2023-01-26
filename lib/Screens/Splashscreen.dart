import 'package:fapp/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 550,
        width: 950,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/GPL.png',
            ),
          ),
        ),
      ),
    ));
  }
}
