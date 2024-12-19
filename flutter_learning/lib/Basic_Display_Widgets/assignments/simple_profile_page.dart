import 'package:flutter/material.dart';

void main() {
  return runApp(const MaterialApp(
    home: SimpleProfilePage(),
  ));
}

class SimpleProfilePage extends StatelessWidget {
  const SimpleProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Simple Profile Page",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Top section for the profile picture
          const Flexible(
            flex: 2,
            child: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/236x/fc/46/b9/fc46b925fd04f89b76a7e5dcf426ad28.jpg"),
              ),
            ),
          ),
          // Bottom section for user details and edit button
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Display user information using CustomInf widgets
                  const CustomInf(
                      title: "Full name", content: "Phung Van Dung"),
                  const CustomInf(title: "Age", content: "21"),
                  const CustomInf(title: "Hobbies", content: "Soccer, book"),
                  // Edit button wrapped with GestureDetector for interactivity
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Center(
                              child: Text(
                                "Edit feature is under construction!",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.edit, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              "Edit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// A reuseable widget to display user information (title and content)
class CustomInf extends StatelessWidget {
  final String title;
  final String content;
  const CustomInf({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text("$title:",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          const SizedBox(width: 8),
          Expanded(
              flex: 6,
              child: Text(content, style: const TextStyle(fontSize: 20))),
        ],
      ),
    );
  }
}
