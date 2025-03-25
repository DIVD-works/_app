import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const Button({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: Colors.black), 
      style: IconButton.styleFrom(
      backgroundColor: Color(0xFFFFC736), 
      shape: CircleBorder(), 
    ),
      onPressed: onPressed,
    );
  }
}
