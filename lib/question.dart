import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  final String questionText;
  //if final is used it means that it won't change
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10) ,
      //we used container cz we want the text to take greated width the the string width. here double.infinity makes the width of conttainer equal to the wiidth of device
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        ),
    );   
  }     
}
