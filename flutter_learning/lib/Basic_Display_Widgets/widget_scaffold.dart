// ! Widget Scaffold is a widget in Flutter used to create the basic structure for a
//screen. It makes it easy to include common components like:
/// * AppBar: The title bar
/// * Body: The main content area of the screen.
/// * FloatingActionButton: A floating button for primary actions.
/// * BottomNavigationBar: A navigation bar at bottom of the screen.
/// * Drawer: A slide-out navigation menu.
library;

// Import the Flutter material package to use widgets and Material Design components.
import 'package:flutter/material.dart';

void main() {
  // The main function initializes the app and sets the home screen to WidgetScaffold.
  return runApp(MaterialApp(
    home: WidgetScaffold(),
  ));
}

class WidgetScaffold extends StatelessWidget {
  WidgetScaffold({super.key});

  // A PageController to control the PageView for navigation between tabs.
  final pageViewController1 = PageController(initialPage: 0);
  final pageViewController2 = PageController(initialPage: 0);

  // A list of widgets representing the pages in the PageView.
  final pageViewOneChildren = [
    // First page (Login Tabbar)
    Container(
      color: Colors.pink,
      alignment: Alignment.center,
      child: const Text(
        "Login Tabbar", // Text displayed on the first page
        style: TextStyle(color: Colors.white),
      ),
    ),
    // Second page (Home Tabbar)
    Container(
      color: Colors.amber,
      alignment: Alignment.center,
      child: const Text(
        "Home Tabbar", // Text displayed on the second page
        style: TextStyle(color: Colors.white),
      ),
    ),
    // Third page (Setting Tabbar)
    Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: const Text(
        "Setting Tabbar", // Text displayed on the third page
        style: TextStyle(color: Colors.white),
      ),
    ),
  ];

  final pageViewTwoChildren = [
    // First page (Home Tabbar)
    Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: const Text(
        "Home Tabbar", // Text displayed on the first page
        style: TextStyle(color: Colors.white),
      ),
    ),
    // Second page (Business Tabbar)
    Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: const Text(
        "Business Tabbar", // Text displayed on the second page
        style: TextStyle(color: Colors.white),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // Defines the number of tabs in the TabBar.
      length: 3,
      child: Scaffold(
        // AppBar: Displays the title and TabBar for navigation.
        appBar: AppBar(
          title: const Center(
            child: Text("Scaffold Demo"), // Title of the AppBar.
          ),
          backgroundColor: Colors.pink[100], // Background color of the AppBar.
          bottom: TabBar(
            // TabBar for navigation with icons for each tab.
            tabs: const [
              Tab(icon: Icon(Icons.login)), // Tab 1: Login
              Tab(icon: Icon(Icons.home)), // Tab 2: Home
              Tab(icon: Icon(Icons.settings)), // Tab 3: Settings
            ],
            onTap: (value) {
              // Navigate to the corresponding page in PageView when a tab is tapped.
              pageViewController1.jumpToPage(value);
            },
          ),
        ),
        // Body of the Scaffold, containing PageViews to display different pages.
        body: Column(
          children: [
            Expanded(
              // Expands the PageView to fill available space.
              child: Container(
                child: PageView(
                  physics:
                      const NeverScrollableScrollPhysics(), // Prevents swiping between pages.
                  controller:
                      pageViewController1, // Connects the PageView to the PageController.
                  children:
                      pageViewOneChildren, // Defines the pages in the PageView.
                ),
              ),
            ),
            Expanded(
              // Expands the PageView to fill available space.
              child: Container(
                child: PageView(
                  physics:
                      const NeverScrollableScrollPhysics(), // Prevents swiping between pages.
                  controller:
                      pageViewController2, // Connects the PageView to the PageController.
                  children:
                      pageViewTwoChildren, // Defines the pages in the PageView.
                ),
              ),
            ),
          ],
        ),
        // FloatingActionButton: A floating button with an add icon.
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Define action when the button is pressed.
          },
          child: const Icon(Icons.add), // Icon for the floating button.
        ),
        // Drawer: A side menu with navigation options.
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text("Item 1"), // Menu item title.
                onTap: () {
                  // Define action when the menu item is tapped.
                },
              ),
            ],
          ),
        ),
        // BottomNavigationBar: A navigation bar at the bottom of the screen.
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            // Navigate to the corresponding page in PageView when a navigation item is tapped.
            pageViewController2.jumpToPage(value);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home), // Navigation item icon.
              label: 'Home', // Label for the navigation item.
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business), // Navigation item icon.
              label: "Business", // Label for the navigation item.
            ),
          ],
        ),
      ),
    );
  }
}
