import 'package:flutter/material.dart';
import '../widgets/empty-screen.dart';
import '../widgets/button2.dart';

class CybersecurityPage extends StatelessWidget {
  const CybersecurityPage({super.key});

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
                    'Cybersecurity',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFC736),
                      fontFamily: 'Arial',  
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),


            Image.asset(
              'assets/img/project_2.png', 
              width: MediaQuery.of(context).size.width * 0.9, 
              fit: BoxFit.fill, 
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              'Looking for an exciting opportunity to work on cybersecurity projects? We are building a robust, PHP-based web application designed to manage and secure sensitive data efficiently. This includes implementing strong user authentication, encryption, and secure CRUD operations. The system is ideal for tracking security incidents, managing user roles, and ensuring compliance. If youre passionate about cybersecurity and want to contribute to a dynamic team apply now!',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFC736),
                fontFamily: 'Arial',  
              ),
            ), 
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Center(
              child: Button2(
                text: "Apply here",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CybersecurityPage()), 
                  );
                },
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.05,
                style: TextStyle(
                  fontSize: 16.0, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
