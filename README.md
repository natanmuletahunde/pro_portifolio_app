 ABC App
 
A vibrant and interactive Flutter app designed to teach children the alphabet (A to Z) using voice recognition, stunning visuals, and an engaging user interface. Perfect for young learners, this app combines education with fun, featuring voice-activated learning, vivid images, and seamless integration with an academic API.
🌟 Inspired by the storytelling depth of Chernobyl and the gritty charm of Peaky Blinders, this app delivers an immersive learning experience with a cinematic flair!
Features

Voice-Activated Learning: Use the speech_to_text Flutter plugin to recognize spoken letters, making learning interactive and accessible. Kids can say "A" and hear it confirmed
Stunning UI: A visually appealing interface with vibrant images for each letter (e.g., "A for Apple" with a colorful apple graphic), designed for both iOS and Android.
Alphabet Gallery: Displays A to Z with corresponding images and pronunciations, enhancing visual and auditory learning.
Home Page: A welcoming dashboard with quick access to learning modes, settings, and progress tracking.
About Page: Details the app’s mission, credits, and academic API integration for enriched content.
Academic API Integration: Fetches educational content (e.g., letter facts or phonics) from an academic website’s API, ensuring reliable and enriching data.
Cross-Platform: Built with Flutter for seamless performance on iOS, Android, and web.
Accessibility: Voice feedback and high-contrast visuals support learners with diverse needs, inspired by speech-to-text accessibility use cases.
Engaging Animations: Smooth transitions and interactive elements keep kids captivated, drawing from Flutter’s animation capabilities.

Screenshots



Home Page
Alphabet Gallery
About Page








Note: Replace placeholder images with actual screenshots.
Getting Started
Follow these steps to set up and run myfirst_abc_app locally.
Prerequisites

Flutter SDK: Install Flutter (version 3.x or later) by following the official guide.
Dart: Included with Flutter.
IDE: Android Studio, VS Code, or IntelliJ IDEA with Flutter plugins.
Emulator/Device: An iOS simulator, Android emulator, or physical device for testing.
API Key: Obtain an API key from the academic website (replace placeholder in lib/config.dart).

Installation

Clone the Repository:
git clone https://github.com/yourusername/myfirst_abc_app.git
cd myfirst_abc_app


Install Dependencies:Run the following to fetch Flutter packages:
flutter pub get


Configure API Key:

Create a lib/config.dart file:const String academicApiKey = 'YOUR_API_KEY_HERE';
const String academicApiBaseUrl = 'https://api.academicwebsite.com';


Replace YOUR_API_KEY_HERE and the base URL with credentials from the academic website.


Set Up Voice Recognition:

Ensure microphone permissions are enabled in your emulator/device settings (Settings > Accessibility > Microphone for iOS simulators).
On Android, note the short pause timeout (up to 5 seconds) for speech recognition.


Run the App:Start the app on your emulator or device:
flutter run



Troubleshooting

Speech Recognition Issues: If voice input fails, ensure the simulator has a virtual microphone enabled or test on a physical device with internet access.
API Errors: Verify the API key and base URL in config.dart. Check the academic website’s API documentation for rate limits or required headers.
Dependencies: Run flutter pub get again if packages fail to resolve.

Project Structure
myfirst_abc_app/
├── assets/                # Images for letters (e.g., apple.png, ball.png)
├── lib/
│   ├── config.dart        # API key and base URL configuration
│   ├── models/            # Data models (e.g., Letter, ApiResponse)
│   ├── pages/             # UI screens (HomePage, AboutPage, AlphabetGallery)
│   ├── services/          # API and voice recognition services
│   ├── widgets/           # Reusable UI components
│   └── main.dart          # App entry point
├── pubspec.yaml           # Dependencies (e.g., speech_to_text, http)
└── README.md              # This file

Dependencies
Key Flutter packages used in the app:

speech_to_text: ^6.6.0 – For voice recognition of spoken letters.
http: ^1.2.0 – For making API calls to the academic website.
provider: ^6.1.0 – State management for seamless UI updates.
flutter_spinkit: ^5.2.0 – Loading animations for API calls.
rive: ^0.13.0 – For interactive animations in the UI.

See pubspec.yaml for the full list.
API Integration
The app integrates with an academic website’s API to fetch educational content, such as:

Phonics and pronunciation for each letter.
Fun facts (e.g., “A is for Ant, which can lift 50 times its weight!”).
Example words and their meanings.

Example API Call:
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> fetchLetterData(String letter) async {
  final response = await http.get(
    Uri.parse('$academicApiBaseUrl/letters/$letter'),
    headers: {'Authorization': 'Bearer $academicApiKey'},
  );
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}

Voice Recognition
The app uses the speech_to_text plugin for voice-based learning:

How It Works: Kids speak a letter (e.g., “B”), and the app confirms it with audio feedback and displays the corresponding image (e.g., “B for Ball”).
Limitations: Designed for short commands (not continuous listening). Android may timeout after a 5-second pause.
Setup: Initialize the plugin once per session and handle microphone permissions:import 'package:speech_to_text/speech_to_text.dart';

final SpeechToText speech = SpeechToText();
await speech.initialize();
speech.listen(onResult: (result) {
  if (result.recognizedWords.isNotEmpty) {
    // Process spoken letter
  }
});



Contributing
Contributions are welcome! To contribute:

Fork the repository.
Create a feature branch (git checkout -b feature/AmazingFeature).
Commit changes (git commit -m 'Add AmazingFeature').
Push to the branch (git push origin feature/AmazingFeature).
Open a Pull Request.

Please follow the Code of Conduct and report issues via GitHub Issues.
Roadmap

 Add quiz mode to test letter recognition.
 Support multiple languages for pronunciations.
 Integrate text-to-speech for enhanced audio feedback.
 Add parental controls and progress reports.
 Optimize for desktop and web platforms.

License
This project is licensed under the MIT License – see the LICENSE file for details.
Acknowledgments

Flutter Community: For the amazing tools and resources.
GirlScript Summer of Code: Inspiration for open-source learning apps.
Academic Website: For providing the educational API.
You: For exploring this project and supporting young learners!

Made with ❤️ by Your Natan Muleta. Let’s make learning as epic as a Peaky Blinders showdown!
