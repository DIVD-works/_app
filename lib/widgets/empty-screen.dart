import 'package:flutter/material.dart';
import 'button.dart';
import '../pages/startpage.dart';
import '../pages/profilepage.dart';
import '../pages/projects.dart';

class ScaffoldPage extends StatelessWidget {
  final Widget child;

  const ScaffoldPage({super.key, required this.child});

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
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: verticalPadding + containerHeight),
            child: child, 
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: containerWidth,  
                  height: containerHeight,
                  color: Color(0xFFFFC736),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(
                        icon: Icons.home_outlined,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => StartPage()), 
                          );
                        },
                      ),
                      Button(
                        icon: Icons.chat_bubble_outline_rounded,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProjectPage()), 
                          );
                        },
                      ),
                      Button(
                        icon: Icons.person_2_outlined,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfilePage()), 
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
