import 'package:flutter/material.dart';
import '../widgets/empty-screen.dart';
import '../widgets/textfield.dart'; 

class VragenPage extends StatelessWidget {
  const VragenPage({super.key});

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
                    'Here are a few',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFC736),
                      fontFamily: 'Arial',  
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005,), 
                  Text(
                    'questions',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFC736),
                      fontFamily: 'Arial',  
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03,),  
                  Text(
                    'What is your full name',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFC736),
                      fontFamily: 'Arial',  
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.6,),  
                 ITextField(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.05,
                    hintText: "Type here",
                    controller: TextEditingController(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
