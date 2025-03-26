import 'package:flutter/material.dart';

class ITextField extends StatefulWidget {
  final double width;
  final double height;
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;

  const ITextField({
    Key? key,
    this.width = 300,
    this.height = 50,
    required this.hintText,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  _ITextFieldState createState() => _ITextFieldState();
}

class _ITextFieldState extends State<ITextField> {
  bool isTyping = false;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {
        isTyping = focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              focusNode: focusNode,
              controller: widget.controller,
              obscureText: widget.obscureText,
              decoration: InputDecoration(
                hintText: widget.hintText,
                border: InputBorder.none,
              ),
            ),
          ),
          if (!isTyping)
            Icon(Icons.chat_bubble_outline, color: Colors.black),
        ],
      ),
    );
  }
}
