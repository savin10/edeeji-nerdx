import 'package:flutter/material.dart';
import 'package:senia/main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Main(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            //#FF6B00
            Colors.deepOrange.withOpacity(0.5),
            BlendMode.darken,
          ),
          image: const AssetImage("assets/images/splash.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Text(
          'KWABO',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    ));
  }
}
