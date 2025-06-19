import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class AlphabetModel extends ChangeNotifier {
  final FlutterTts _tts = FlutterTts();
  final List<Map<String, dynamic>> alphabetData = [
    {'letter': 'A', 'word': 'Apple', 'image': 'https://images.unsplash.com/photo-1567306226416-28f0ef9631d3'},
    {'letter': 'B', 'word': 'Ball', 'image': 'https://images.unsplash.com/photo-1581558989949-5d56ed1002f5'},
    {'letter': 'C', 'word': 'Cat', 'image': 'https://images.unsplash.com/photo-1573865526739-10659fec78a5'},
    {'letter': 'D', 'word': 'Dog', 'image': 'https://images.unsplash.com/photo-1543466835-00a7907e9de1'},
    {'letter': 'E', 'word': 'Elephant', 'image': 'https://images.unsplash.com/photo-1576179635660-9dcfc4e208d2'},
    {'letter': 'F', 'word': 'Fish', 'image': 'https://images.unsplash.com/photo-1544551763-46a013bb70b5'},
    {'letter': 'G', 'word': 'Giraffe', 'image': 'https://images.unsplash.com/photo-1549822830-1b18e8d54901'},
    {'letter': 'H', 'word': 'Horse', 'image': 'https://images.unsplash.com/photo-1519861531473-26297f4f8d07'},
    {'letter': 'I', 'word': 'Ice Cream', 'image': 'https://images.unsplash.com/photo-1560008581-09826d1de4e4'},
    {'letter': 'J', 'word': 'Jellyfish', 'image': 'https://images.unsplash.com/photo-1541336318489-98935a40ff35'},
    {'letter': 'K', 'word': 'Kangaroo', 'image': 'https://images.unsplash.com/photo-1504472478235-9b2ed919cacf'},
    {'letter': 'L', 'word': 'Lion', 'image': 'https://images.unsplash.com/photo-1546188994-07c37f6a3b22'},
    {'letter': 'M', 'word': 'Monkey', 'image': 'https://images.unsplash.com/photo-1540573133985-87b6da6d54a9'},
    {'letter': 'N', 'word': 'Nest', 'image': 'https://images.unsplash.com/photo-1587909098832-f455d8ce0080'},
    {'letter': 'O', 'word': 'Orange', 'image': 'https://images.unsplash.com/photo-1611080626919-7cf5a9dbab5b'},
    {'letter': 'P', 'word': 'Penguin', 'image': 'https://images.unsplash.com/photo-1570481662006-4e7f0dc966c9'},
    {'letter': 'Q', 'word': 'Queen', 'image': 'https://images.unsplash.com/photo-1599749341354-577ca04e5eb1'},
    {'letter': 'R', 'word': 'Rabbit', 'image': 'https://images.unsplash.com/photo-1585110396000-c9ffdbe16f83'},
    {'letter': 'S', 'word': 'Snake', 'image': 'https://images.unsplash.com/photo-1535979012192-7d7d5a630f9f'},
    {'letter': 'T', 'word': 'Tiger', 'image': 'https://images.unsplash.com/photo-1546188003-9c1ca7c80f21'},
    {'letter': 'U', 'word': 'Umbrella', 'image': 'https://images.unsplash.com/photo-1512947722820-8f7a4b686334'},
    {'letter': 'V', 'word': 'Violin', 'image': 'https://images.unsplash.com/photo-1519896624-42c85cd26088'},
    {'letter': 'W', 'word': 'Whale', 'image': 'https://images.unsplash.com/photo-1516683225768-fc283ac4b6c2'},
    {'letter': 'X', 'word': 'Xylophone', 'image': 'https://images.unsplash.com/photo-1592494607665-4b7ac7b8c673'},
    {'letter': 'Y', 'word': 'Yak', 'image': 'https://images.unsplash.com/photo-1578593925963-44c1c314c274'},
    {'letter': 'Z', 'word': 'Zebra', 'image': 'https://images.unsplash.com/photo-1546188004-1e4e2d3e6f8a'},
  ];

  AlphabetModel() {
    _tts.setLanguage('en-US');
    _tts.setSpeechRate(0.5);
  }

  void speak(String text) async {
    await _tts.speak(text);
  }

  void stopSpeaking() async {
    await _tts.stop();
  }
}