import 'dart:async';

import 'package:air_plane/ui/pages/get_started_pages.dart';
import 'package:flutter/material.dart';
import 'package:air_plane/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), () {
      // route getStarted
      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryCollor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.6,
              height: MediaQuery.of(context).size.height / 4.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
            ),
            Text(
              "Airplane",
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: medium,
                letterSpacing: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
