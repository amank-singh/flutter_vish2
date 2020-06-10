import 'package:vishwakarmaapp/content/content_card_contactus.dart';
import 'package:vishwakarmaapp/content/content_card_getsupport.dart';
import 'package:vishwakarmaapp/content/loading.dart';
import 'package:vishwakarmaapp/content/no_content.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Content extends StatefulWidget{

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  Map data;
  bool loaded=false;
  bool empty = false;
  bool contactus = false;
  String message= "";
  List<dynamic> result = List();

  _getData(String api_name) async{

    Response response = await get('https://vishwakarmaudhyog.com/API/$api_name.php');
    if (response.statusCode == 200) {
      result = jsonDecode(response.body);
      print(result);
      if(result.length != 0)
      {
        if(result[0]['product'] != null)
        {
          contactus = false;
        }
        else{
          contactus = true;
        }
      }
      else{
        empty=true;
        message = "Nothing To Show";
      }

    } else {
      empty = true;
      message = "Server Error";
    }

    setState(() {
      loaded=true;

    });
  }


  Widget build(BuildContext context) {

    data = data!=null? data: ModalRoute.of(context).settings.arguments;
    String api_name = data['api_key'];
    _getData(api_name);






    return Scaffold(
    backgroundColor: Color(0xff343233),
      appBar: AppBar(
        title: Text(
          'Messages',
          style: TextStyle(
          color: Color(0xffefdab9),
          ),
        ),
        backgroundColor: Color(0xFF584b4f),
      ),
      body: !loaded?Loading()
          :empty?NoContent(message)
          :contactus?ContentCardContactUs(result)
          :ContentCardGetSupport(result)
      ,

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
