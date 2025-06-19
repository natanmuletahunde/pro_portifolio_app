import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class FuturePlanPage extends StatelessWidget {
  const FuturePlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Future Plans',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Our Roadmap',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ).animate().fadeIn(duration: 1.seconds),
              const SizedBox(height: 16),
              Text(
                'We’re excited about the future of Alphabet Learning! Here’s what’s coming next:',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ).animate().slideY(begin: 0.5, duration: 1.seconds),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.check_circle, color: Colors.white),
                title: Text(
                  'Interactive Games: Fun quizzes and games to reinforce alphabet learning.',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                ),
              ).animate().fadeIn(delay: 0.5.seconds),
              ListTile(
                leading: const Icon(Icons.check_circle, color: Colors.white),
                title: Text(
                  'More Languages: Support for multiple languages to reach more kids.',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                ),
              ).animate().fadeIn(delay: 0.7.seconds),
              ListTile(
                leading: const Icon(Icons.check_circle, color: Colors.white),
                title: Text(
                  'Parental Controls: Features for parents to track progress.',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                ),
              ).animate().fadeIn(delay: 0.9.seconds),
            ],
          ),
        ),
      ),
    );
  }
}