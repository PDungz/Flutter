// ! Widget Text is the most common and basic widget
// used to display text strings on the user interface
// Import the Flutter Material package for UI components.
import 'package:flutter/material.dart';

void main() {
  // The main function initializes the app and sets the home screen to WidgetText.
  return runApp(const MaterialApp(
    home: WidgetText(),
  ));
}

// A StatelessWidget to demonstrate the usage of the Text widget.
class WidgetText extends StatelessWidget {
  const WidgetText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,

        // The Text widget displays a text string with styling and formatting options.
        child: const Text(
          // The text string to be displayed.
          "Basic display widget with widget text. "
          "Basic display widget with widget text. "
          "Basic display widget with widget text.",

          //? Style: Defines visual properties of the text.
          style: TextStyle(
            fontSize: 16, // Font size of the text.
            color: Colors.red, // Text color.
            fontWeight: FontWeight.bold, // Makes the text bold.
            fontStyle: FontStyle.italic, // Italicizes the text.
            // decoration: TextDecoration.underline, // Underlines the text.
            letterSpacing: 2, // Space between individual letters.
            wordSpacing: 4, // Space between words.
          ),

          //? textAlign: Aligns the text within its container.
          // Options include center, left, right, or justify.
          textAlign: TextAlign.justify, // Aligns text with both edges.

          //? maxLines: Limits the number of visible lines.
          // maxLines: 5, // Restricts the text to 5 lines.

          //? overflow: Specifies how to handle overflowing text.
          // overflow: TextOverflow.clip, // Cuts off overflow without a visible marker.
          // overflow: TextOverflow.ellipsis, // Adds "..." for overflowed text.
          // overflow: TextOverflow.fade, // Gradually fades out overflowed text.

          //? softWrap: Determines whether text wraps to the next line.
          // softWrap: true, // Text wraps when it overflows.

          //? textDirection: Sets the direction of text flow.
          // textDirection: TextDirection.ltr, // Left-to-right text direction.
          // textDirection: TextDirection.rtl, // Right-to-left text direction.

          //? textScaler: Adjusts the text size dynamically.
          // textScaler: TextScaler.linear(2), // Scales the text size by a factor of 2.
        ),
      ),
    );
  }
}
