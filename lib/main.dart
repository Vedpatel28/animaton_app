import 'package:animaton_app/controllers/animation_provider.dart';
import 'package:animaton_app/utiles/routes_utiles.dart';
import 'package:animaton_app/views/screens/description_page.dart';
import 'package:animaton_app/views/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => animationProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        AllRouters.homePage: (context) => home_page(),
        AllRouters.descriptionPage: (context) => description_Page(),
      },
    );
  }
}
