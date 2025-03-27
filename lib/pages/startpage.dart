import 'package:flutter/material.dart';
import '../widgets/empty-screen.dart';
import '../widgets/button2.dart';
import '../pages/vragenpage.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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
                    'Welcome',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFC736),
                      fontFamily: 'Arial',  
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005,), 
                  Text(
                    'ready for your',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFC736),
                      fontFamily: 'Arial',  
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005,),  
                  Text(
                    'internship?',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFC736),
                      fontFamily: 'Arial',  
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
            Center(
                child: Button2(
                  text: "Start",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VragenPage()), 
                    );
                  },
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.06,
                style: TextStyle(
                  fontSize: 20.0, 
                  fontWeight: FontWeight.bold, 
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
