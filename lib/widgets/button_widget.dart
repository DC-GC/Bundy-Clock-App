import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BasicButton extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  Color? textColor;
  VoidCallback onPressed;
  Key? key;
  bool useIcon;
  IconData? icon;
  double buttonWidth;
  double buttonHeight;
  
  BasicButton({ 
    required this.backgroundColor, 
    required this.borderColor, 
    required this.text, 
    required this.onPressed,
    required this.buttonWidth,
    required this.buttonHeight,
    this.textColor = Colors.black,
    this.key,
    this.useIcon = false,
    this.icon
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      child: Center(
        
        child: ElevatedButton(
          
          key: key,
            child: useIcon? Icon(icon):Text(text,
            style:TextStyle(color: textColor),
            ),
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(

              fixedSize: Size(buttonWidth, buttonHeight),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(width: 5.0, color: Colors.red,),
                
                ),
              
            ),
            ),
      ),
      
      // decoration: BoxDecoration(
      //   color: backgroundColor,
      //   borderRadius: BorderRadius.circular(30),
      //   border:Border.all(
      //     color: borderColor,
      //     width: 1.0,
      //   ),
      // ),
    );
  }
}