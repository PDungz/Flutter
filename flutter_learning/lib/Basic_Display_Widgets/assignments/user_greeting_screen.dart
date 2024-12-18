import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const MaterialApp(
    home: UserGreetingScreen(),
  ));
}

class UserGreetingScreen extends StatelessWidget {
  const UserGreetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Hello"),
        ),
      ),
      body: Column(
        children: [
          // Top section
          Flexible(
            flex: 2, // Occupies 2 parts of the total space
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue[100],
              child: const Text(
                "Welcome to my app!",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),

          // Middle Image Section
          Expanded(
            flex: 4, // Occupies 4 parts of the total space
            child: Container(
              color: Colors.blue[200],
              child: Image.network(
                "https://i.pinimg.com/236x/fc/46/b9/fc46b925fd04f89b76a7e5dcf426ad28.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Bottom Icon
          Flexible(
            flex: 2, // Occupies 2 parts of the total space
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue[300],
              child: const Icon(
                Icons.access_alarm_sharp,
                size: 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
