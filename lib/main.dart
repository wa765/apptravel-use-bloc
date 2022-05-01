import 'package:air_plane/cubit/page_cubit.dart';
import 'package:air_plane/ui/pages/bonus_page.dart';
import 'package:air_plane/ui/pages/get_started_pages.dart';
import 'package:air_plane/ui/pages/main_page.dart';
import 'package:air_plane/ui/pages/sign_up.dart';
import 'package:air_plane/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          // ui pertama dipanggil saat aplikasi dijalankan
          '/': (context) => const SplashPage(),
          // route getStarted
          '/get-started': (context) => const GetStartedPage(),
          // route sign up
          '/sign-up': (context) => const SignUp(),
          // route bonus page
          '/bonus-page': (context) => const BonusPage(),
          // route main page
          '/main-page': (context) => const MainPage(),
        },
      ),
    );
  }
}
