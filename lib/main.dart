import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Gets rid of the banner in top right corner
      theme: ThemeData(
        primarySwatch: Colors.blue // Sets color theme for app
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Nav bar
        title: const Text('Flutter'), // Adds title to the nav bar
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint('Floating Action Button'); // Prints to the terminal
        },
        child: Icon(Icons.add), // Adds the icnon within the button
      ),
    );
  }
}