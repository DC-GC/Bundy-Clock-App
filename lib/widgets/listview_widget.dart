// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class BasicButton extends StatelessWidget {
//   VoidCallback itemBuilder;
//   int itemCount;
  
  
//   BasicButton({ 
//     required this.backgroundColor, 
//     required this.borderColor, 
//     required this.text, 
//     required this.onPressed,
//     required this.buttonWidth,
//     required this.buttonHeight,
//     this.textColor = Colors.black,
//     this.key,
//     this.useIcon = false,
//     this.icon
//     }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: buttonWidth,
//       height: buttonHeight,
//       child: Center(
        
//         child: Expanded(
//                 child:ListView.builder(
//                 itemCount: state.attendanceLogs.length,
//                 shrinkWrap: true,
//                 itemBuilder: (context, index){
//                   if(index<state.attendanceLogs.length){
//                     return ListTile(title: Text(state.attendanceLogs[index].date,));

//                   }else{
//                     return const Padding(padding: EdgeInsets.symmetric(vertical: 24),
//                     child: Center(child: CircularProgressIndicator()));
//                   }
//                 },             
//                 ),              
//               ),
//       ),
      
//       // decoration: BoxDecoration(
//       //   color: backgroundColor,
//       //   borderRadius: BorderRadius.circular(30),
//       //   border:Border.all(
//       //     color: borderColor,
//       //     width: 1.0,
//       //   ),
//       // ),
//     );
//   }
// }