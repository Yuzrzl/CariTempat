
import 'package:cari_tempat_app/first_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login User'),
      // ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:Expanded(
          child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:20),
            child: Image.asset('images/undraw_People_search_re_5rre.png',width: 200,height: 300,),
          ),
          Container(
            child: Text('Login Area',textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Username ',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Password '
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: ElevatedButton(
              child: Text('Login'),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FirstScreen();
                }));
            },
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              child: Text('Create Account'),onPressed: null,
            ),
          )
        ],
      ),
      ),
      ),
    );
  }
}

