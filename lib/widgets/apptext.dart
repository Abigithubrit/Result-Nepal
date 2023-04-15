import "package:flutter/material.dart";
class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
    final textAlign;


  

  AppText({super.key, 
   this.size = 14,
  this.textAlign,
  required this.text, this.color=Colors.black87});@override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(color:color,
    fontSize: size,
    fontWeight: FontWeight.w600,
    ),
        textAlign:textAlign,
);
    
  }
}