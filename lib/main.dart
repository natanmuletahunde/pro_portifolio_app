import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'models/alphabet_model.dart';
import 'pages/home_page.dart';
import 'pages/alphabet_page.dart';
import 'pages/about_page.dart';
import 'pages/future_plan_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AlphabetModel(),
      child: const AlphabetLearningApp(),
    ),
  );
}

class AlphabetLearningApp extends StatelessWidget {
  const AlphabetLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: [
        GoRoute(path: '/', builder: (_, __) => const HomePage()),
        GoRoute(path: '/alphabet', builder: (_, __) => const AlphabetPage()),
        GoRoute(path: '/about', builder: (_, __) => const AboutPage()),
        GoRoute(path: '/future-plan', builder: (_, __) => const FuturePlanPage()),
      ],
    );

    return MaterialApp.router(
      title: 'Alphabet Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: router,
    );
  }
}