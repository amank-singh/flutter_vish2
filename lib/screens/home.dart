import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343233),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Vishwakarma Udhyog',
            style: TextStyle(
              color: Color(0xffefdab9),
            ),
          ),
        ),
        backgroundColor: Color(0xFF584b4f),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Center(
            child: Image(
              image: AssetImage('images/logo.png'),
              height: 200,

            ),
          ),
          SizedBox(height: 40,),
          Text(
            'Hey There! Welcome Back',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFFefdab9),
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 40,),
          RaisedButton(
            onPressed: (){
              Navigator.pushNamed(context, "/menu");
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5,10,5,10),
              child: Text("Check Out Your Messages",
                style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            color: Color(0xffffd152),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Made By AAA Tech Services",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff333333),
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
