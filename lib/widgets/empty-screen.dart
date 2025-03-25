import 'package:flutter/material.dart';
import 'button.dart';

class ScaffoldPage extends StatelessWidget {
  final Widget child;

  ScaffoldPage({required this.child});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double horizontalPadding = screenWidth * 0.05;
    double verticalPadding = screenHeight * 0.02;

    double containerWidth = screenWidth * 0.9;  
    double containerHeight = 4.0;

    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Column(
        children: [
          child,
          Spacer(),  
          Padding(
            padding: EdgeInsets.only(bottom: verticalPadding),
            child: Container(
              width: containerWidth,  
              height: containerHeight,
              color: Color(0xFFFFC736),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  icon: Icons.home_outlined,
                  onPressed: () {
                    print("Home button pressed");
                  },
                ),
                Button(
                  icon: Icons.chat_bubble_outline_rounded,
                  onPressed: () {
                    print("Chat button pressed");
                  },
                ),
                Button(
                  icon: Icons.person_2_outlined,
                  onPressed: () {
                    print("Profile button pressed");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
