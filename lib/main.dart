
import 'package:azkar_elancer/screens/homeScreen.dart';
import 'package:azkar_elancer/screens/launchScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: 'launchScreen',
      routes: {
        'homeScreen' :(context) =>  const HomeScreen(),
        'launchScreen' : (context) => const LaunchScreen(),
      },
    );

  }

}

