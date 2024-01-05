import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false; // Bool for the switch widget
  bool? isCheckbox = false; // Bool for the switch widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Nav bar
        title: const Text('Learn Flutter!'), // Title
        automaticallyImplyLeading:
            false, // Gets ride of the default back button
        leading: IconButton( // Creats icon button 
          onPressed: () { // Basically a onClickListener
            Navigator.of(context)
                .pop(); // Deletes the page the user was on (AKA back button)
          },
          icon: const Icon(Icons.arrow_back_ios), // Button Icon
        ),
      ),
      body: SingleChildScrollView(
        child: Column( // Body of the screen
          children: [ // Just like child but children allows more widgets
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
              style: ElevatedButton.styleFrom( // Changes the style of the button
                backgroundColor: isSwitch ? Colors.green : Colors.blue, // If false then green else blue
              ),
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
            GestureDetector( // Creats a gesture widget allowing customizing with gestures
            behavior: HitTestBehavior.opaque, // This allows a gesture anywhere on the row
              onTap: (){ // The selected gesture
                debugPrint('This is the row :)', // Print to the console window
                );
              },
              child: const Row( // Row widget
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Spaces and centers the rows children
                children: [
                  // Icons for Row widget
                  Icon(
                    Icons.local_fire_department, // Icon selected
                    color: Colors.blue, // Color of icon
                  ),
                  Text('Row Widget'),
                  Icon(
                    Icons.local_fire_department, // Icon selected
                    color: Colors.blue, // Color of icon
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool){
                setState(() {
                  isSwitch = newBool;
                });
              }
            ),
            Checkbox(
              value: isCheckbox, 
              onChanged: (bool? newBool){
              setState(() {
                isCheckbox = newBool;
              });
            }),
            Image.network('https://cdn.pixabay.com/photo/2023/09/30/17/30/ai-generated-8286112_1280.jpg')
          ],
        ),
      ),
    );
  }
}
