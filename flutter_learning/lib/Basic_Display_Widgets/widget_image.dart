// ! Image is a widget in Flutter that uses images to display.
// From internet, local storage(assets), files
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart'; // For displaying SVG images.

void main() {
  // Initialize the app and set the home screen to WidgetImage.
  return runApp(const MaterialApp(
    home: WidgetImage(), // Root widget for the app.
  ));
}

class WidgetImage extends StatelessWidget {
  const WidgetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center the content of the screen.
        child: Column(
          // Arrange the widgets vertically.
          children: [
            //! Different ways to load images in Flutter.

            //? Image.asset
            // Loads an image from the `assets` directory of the Flutter project.
            Image.asset("assets/images/setup.jpg"),

            //? Image.network
            // Loads an image from the internet using a URL.
            Image.network(
                "https://i.pinimg.com/originals/64/33/c9/6433c96668669f39f0171ef478e3eb29.gif"),

            //! Handling vector images using the `flutter_svg` package.
            // SVG images are scalable and commonly used for icons or logos.
            // Since Flutter doesn't support SVG natively, we use the flutter_svg package.
            SvgPicture.asset(
              "assets/svg/rb_6125.svg", // Path to the SVG file.
              width: 500, // Specify the width of the SVG image.
            ),
          ],
        ),
      ),
    );
  }
}
