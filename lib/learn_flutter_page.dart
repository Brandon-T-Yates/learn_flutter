import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Nav bar
        title: const Text('Learn Flutter!'), // Title
        automaticallyImplyLeading: false, // Gets ride of the default back button
        leading: IconButton( // Creats icon button
          onPressed: () { // Basically a onClickListener
            Navigator.of(context).pop(); // Deletes the page the user was on (AKA back button)
          },
          icon: const Icon(Icons.arrow_back_ios), // Button Icon
        ),
      ),
      body: Column( // Body of the screen
        children: [ // Just like child but children allows more widgets
          Image.asset('images/einstein.jpg') // Image populating and the path
        ],
      ),
    );
  }
}
