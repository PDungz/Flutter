// ! Widget Icon is used to display icons from available icon sets,
// mainly from Material Design
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const MaterialApp(
    home: WidgetIcon(),
  ));
}

class WidgetIcon extends StatelessWidget {
  const WidgetIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar at the top of the screen with a title and action icons.
        title: const Center(
          child: Text("Widget Icon"), // Centered title of the app bar.
        ),
        actions: [
          // Action buttons on the right side of the AppBar.
          IconButton(
            onPressed: () {}, // Functionality when the icon is pressed.
            icon: const Icon(Icons.settings), // Settings icon.
          ),
        ],
      ),
      body: Center(
        // Center the Row widget in the middle of the screen.
        child: Row(
          // Row layout displays its children horizontally.
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // Space out the icons evenly across the Row.
          children: [
            // First icon: Home icon.
            const Icon(
              Icons.home, // Built-in home icon from Material Design.
              color: Colors.pink, // Icon color.
              size: 80, // Size of the icon.
            ),

            // Second icon: Airplane icon from Cupertino (iOS-style) icons.
            const Icon(
              CupertinoIcons.airplane, // iOS-style airplane icon.
              color: Colors.blue, // Icon color.
              size: 60, // Size of the icon.
            ),

            // Third icon: Person icon wrapped in an IconButton.
            IconButton(
              onPressed: () {}, // Action to perform when the button is clicked.
              icon: const Icon(
                Icons.person, // Built-in person icon from Material Design.
                size: 40, // Icon size.
              ),
            ),
          ],
        ),
      ),
    );
  }
}
