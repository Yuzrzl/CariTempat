
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cari_tempat_app/content/content_list.dart';


class DetailScreen extends StatelessWidget{
  final ContentList a;
  DetailScreen({required this.a});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(a.name),
      ),
      body: SingleChildScrollView(
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text(a.name,style: TextStyle(fontSize: 25),textAlign: TextAlign.center,),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text('Direction : '),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Image.network(a.image2),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text('Address : '+a.location ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text('Distance : '+a.distance +' From your area' ),
          ),
        ],
      ),
      ),
    );
  }
}

