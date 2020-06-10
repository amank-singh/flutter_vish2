import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  List<String> menuTitle = [
    "Contact Us",
    "Queries",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xff343233),
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(
          color: Color(0xffefdab9),
          ),
        ),
        backgroundColor: Color(0xFF584b4f),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,20,0,0),
        child: ListView.builder(
          itemCount: menuTitle.length,
          itemBuilder: (context, index){
            return  Padding(
              padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
              child: Card(
                color: Color(0xFF584b4f),
                child: ListTile(
                  onTap: () async {
                    await Navigator.pushNamed(context, '/content', arguments: {
                      'api_key':menuTitle[index],
                    });

                  },
                  title: Text(
                    '${menuTitle[index]}',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFefdab9),
                    ),
                  ),
                  leading: Icon(
                      Icons.radio_button_unchecked,
                    color: Color(0xffffffff),

                  ),
                ),
              ),
            );
          },

        ),
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
