import 'package:flutter/material.dart';

Widget NoContent(String message){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Center(
        child: Text(
            '$message',
          style: TextStyle(
            color: Color(0xFFefdab9),
            fontSize: 24,
          ),
        ),
      ),
    ],
  );
}