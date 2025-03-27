import 'package:flutter/material.dart';
import '../widgets/empty-screen.dart';
import '../widgets/button2.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,  
                children: [
                  Text(
                    'Matched projects:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFC736),
                      fontFamily: 'Arial',  
                    ),
                  ),                
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
            Center(
              child: Button2(
                text: "Cybersecurity",
                onPressed: () {
                  print('Button Pressed!');
                },
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.07,
                style: TextStyle(
                  fontSize: 20.0, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
            Center(
              child: Button2(
                text: "Java Api Intergration",
                onPressed: () {
                  print('Button Pressed!');
                },
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.07,
                style: TextStyle(
                  fontSize: 20.0, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
            Center(
              child: Button2(
                text: "Arch Linux Basics",
                onPressed: () {
                  print('Button Pressed!');
                },
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.07,
                style: TextStyle(
                  fontSize: 20.0, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
            Center(
              child: Button2(
                text: "SQL PHP Database",
                onPressed: () {
                  print('Button Pressed!');
                },
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.07,
                style: TextStyle(
                  fontSize: 20.0, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
            Text(
              'Other projects:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFC736),
                  fontFamily: 'Arial',  
                ),
              ), 
          ],
        ),
      ),
    );
  }
}
