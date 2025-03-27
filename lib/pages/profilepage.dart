import 'package:flutter/material.dart';
import '../widgets/empty-screen.dart';
import '../widgets/button2.dart';
import '../pages/vragenpage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double responsivePadding = screenWidth * 0.3;

    return ScaffoldPage(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,  
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('lib/img/Liam.png'),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: EdgeInsets.only(left: responsivePadding - 90),
                        child: Text(
                          'Liam Plokkaar',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFC736),
                            fontFamily: 'Arial',
                          ),
                        ),
                      ),
                    ]
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005,), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: responsivePadding), 
                      child: Text(
                        'School: College University Roosevelt',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFC736),
                          fontFamily: 'Arial',
                        ),
                      ),
                    ),
                  ]
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005,), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: responsivePadding), 
                      child: Text(
                        '29/03/2006',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFC736),
                          fontFamily: 'Arial',
                        ),
                      ),
                    ),
                  ]
                ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.5,),  
                  Text(
                    'Complete your profile!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFC736),
                      fontFamily: 'Arial',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
            Center(
              child: Button2(
                text: "Finish",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VragenPage()), 
                  );
                },
                width: 100.0,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
