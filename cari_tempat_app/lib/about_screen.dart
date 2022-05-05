import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Text('Cari Tempat Umum',textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                margin: EdgeInsets.all(20),
                //padding: EdgeInsets.all(20),
                child: Text('Cari Tempat Umum merupakan sebuah aplikasi yang dibuat untuk memudahkan orang - orang mencari sebuah tempat '
                    'umum. pengguna cukup membuka aplikasi ini dan akan langsung melihat daftar tempat umum terdekat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}