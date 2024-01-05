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
      appBar: AppBar(
        // Nav bar
        title: const Text('Learn Flutter!'), // Title
        automaticallyImplyLeading:
            false, // Gets ride of the default back button
        leading: IconButton(
          // Creats icon button
          onPressed: () {
            // Basically a onClickListener
            Navigator.of(context)
                .pop(); // Deletes the page the user was on (AKA back button)
          },
          icon: const Icon(Icons.arrow_back_ios), // Button Icon
        ),
      ),
      body: Column(
        // Body of the screen
        children: [
          // Just like child but children allows more widgets
          Image.asset('images/einstein.jpg'), // Image populating and the path
          const SizedBox(
            height: 10,
          ),
          const Divider( // creates a divide between widgets
            color: Colors.black, // Sets the color
          ),
          Container(
            margin: const EdgeInsets.all(10.0), // Adds spacing around the container
            padding: const EdgeInsets.all(10.0), // Adds padding around the container
            color: Colors.blueGrey, // Sets color of widget
            width: double.infinity, // Cause the conmtainer to stretch all the way across
            child: const Center(
              child: Text( // Text widget
                'This is a text widget',
                style: TextStyle(
                  color: Colors.white // Text color
                ),
              ),
            ),
          ),
          ElevatedButton( // Creates a elevated button
            onPressed: (){ // When pressed...
            debugPrint('Elevated Button'); // do this!
            }, 
            child: const Text('Elevated Button'), // Text widget
          ),
          OutlinedButton( // Creates a Outlined button which is like Elevated button but different style
            onPressed: (){ // When pressed...
            debugPrint('Outlined Button'); // do this!
            }, 
            child: const Text('Outlined Button'), // Text widget
          ),
          TextButton( // Creates a Text button which is like Elevated button but different style
            onPressed: (){ // When pressed...
            debugPrint('Text Button'); // do this!
            }, 
            child: const Text('Text Button'), // Text widget
          ),
        ],
      ),
    );
  }
}
