import 'package:flutter/material.dart';
import 'package:learn_flutter/learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center( // Centers what ever is returned
      child: ElevatedButton( // Creates a Elevated button
        onPressed: () { // When pressed....
          Navigator.of(context).push( // Naviagte to....
            MaterialPageRoute( 
              builder: (BuildContext context) { 
                return const LearnFlutterPage(); // This page!!
              },
            ),
          );
        },
        child: const Text('Learn Flutter'), // Text Widget
      ),
    );
  }
}
