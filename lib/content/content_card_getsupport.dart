import 'package:flutter/material.dart';


Widget ContentCardGetSupport(dynamic result){

  return Padding(
      padding: const EdgeInsets.fromLTRB(0,20,0,0),
      child: ListView.builder(
          itemCount: result.length,
          itemBuilder: (context, index){
            return           Padding(
              padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
              child: Card(
                color: Color(0xFF584b4f),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Product : ${result[index]['product']}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFefdab9),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Name : ${result[index]['name']}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFefdab9),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Phone : ${result[index]['phone']}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFefdab9),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Email : ${result[index]['email']}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFefdab9),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Query : ${result[index]['query']}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFefdab9),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );

          }
      )
  );

}



