import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  final String text; 
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color borderColor; 
  final TextStyle style; 

  const Button2({
    super.key,
    required this.text, 
    required this.onPressed,
    this.width = 200.0,  
    this.height = 50.0,  
    this.borderColor = const Color(0xFFE8A200), 
    required this.style, 
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, 
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Color(0xFFFFC736),  
            borderRadius: BorderRadius.circular(20),
            border: Border.all(       
              color: borderColor,     
              width: 3.0,             
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: style, 
            ),
          ),
        ),
      ),
    );
  }
}
