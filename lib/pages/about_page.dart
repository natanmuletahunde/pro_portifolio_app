import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue],
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
                'About Alphabet Learning',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ).animate().fadeIn(duration: 1.seconds),
              const SizedBox(height: 16),
              Text(
                'Alphabet Learning is a fun and interactive app designed to help children learn the alphabet from A to Z. With engaging images, clear pronunciation, and a vibrant UI, kids can explore letters and words like "A for Apple" and "B for Ball" in an exciting way.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.justify,
              ).animate().slideX(begin: -0.5, duration: 1.seconds),
              const SizedBox(height: 16),
              Text(
                'Our mission is to make learning enjoyable and accessible for young learners, fostering a love for education through technology.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.justify,
              ).animate().slideX(begin: 0.5, duration: 1.seconds),
            ],
          ),
        ),
      ),
    );
  }
}