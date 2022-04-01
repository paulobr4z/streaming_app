import 'package:flutter/material.dart';
import 'package:streaming_app/views/home_view.dart';
import 'package:streaming_app/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Streaming App',
      theme: ThemeData.dark(),
      initialRoute: '/splash',
      routes: {
        '/splash':(context) => const SplashView(),
        '/home':(context) => const HomeView()
      },
    );
  }
}