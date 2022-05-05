import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cari_tempat_app/about_screen.dart';
import 'package:cari_tempat_app/list_screen.dart';


class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carite'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
    child:
        Expanded(
          child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:20),
            child: Image.network('https://previews.123rf.com/images/irfanfirdaus/irfanfirdaus1902/irfanfirdaus190200019/117794709-navigation-map-with-pin-pointer-vector-illustration-of-location-direction-city-map-with-navigation-f.jpg', width: 300, height: 400,),
          ),
          Container(
            padding: EdgeInsets.all(20),
           //margin: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              child: Text('Cari Tempat'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ListScreen();
                }));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            //margin: EdgeInsets.only(top: 10),
            child: TextButton(
              child: Text('Tentang aplikasi'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AboutScreen();
                }));
              },
            ),
          )
        ],
      ),
      ),
      ),
    );

  }
}