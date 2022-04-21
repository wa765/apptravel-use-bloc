import 'package:air_plane/ui/pages/get_started_pages.dart';
import 'package:air_plane/ui/pages/sign_up.dart';
import 'package:air_plane/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // ui pertama dipanggil saat aplikasi dijalankan
        '/': (context) => const SplashPage(),
        // route getStarted
        '/get-started': (context) => const GetStartedPage(),
        // route sign up
        '/sign-up': (context) => const SignUp(),
      },
    );
  }
}
