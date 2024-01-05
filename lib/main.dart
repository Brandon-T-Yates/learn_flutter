import 'package:flutter/material.dart';
import 'package:learn_flutter/home_page.dart';
import 'package:learn_flutter/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Gets rid of the banner in top right corner
      theme: ThemeData(primarySwatch: Colors.blue // Sets color theme for app
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
  int currentPage = 0; // created a variable
  List<Widget> pages = const [ // Creates a list of pages
    HomePage(), // List Item
    ProfilePage(), // List Item
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Nav bar
        title: const Text('Flutter'), // Adds title to the nav bar
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating Action Button'); // Prints to the terminal
        },
        child: const Icon(Icons.add), // Adds the icnon within the button
      ),
      bottomNavigationBar: NavigationBar( // Adds navbar to the botton of the screen
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'), // Adds icon
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'), // Adds icon
        ],
        onDestinationSelected: (int index){
          setState(() { // Allows screen to refresh with the StatefulWidget
            currentPage = index;
          });
        },    
        selectedIndex: currentPage, // Shows last clicked on icon
      ),
    );
  }
}
