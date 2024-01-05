import 'package:flutter/material.dart';
int itemCount = 20; // Created variable

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount, // Called variable and told it how many to list
      itemBuilder: (BuildContext context, int index) { // Builds the list
        return ListTile( // Returns list.....
          title: Text('Item ${(index + 1)}'), // Items text and increases by 1!
          leading: const Icon(Icons.person), // Adds person icon in front of the item
          trailing: const Icon(Icons.select_all), // Adds the icon behind the item
          onTap: () { // When clicked...
            debugPrint('Item ${(index + 1)} selected'); // Do this!
          },
        );
      },
    );
  }
}