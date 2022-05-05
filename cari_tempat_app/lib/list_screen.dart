
import 'package:flutter/material.dart';
import 'package:cari_tempat_app/content/content_list.dart';
import 'package:cari_tempat_app/detail_screen.dart';
class ListScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Tempat Umum Terdekat'),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(itemBuilder: (context, index) {
        final ContentList a = contenListlist[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreen(a: a);
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.network(
                          a.image1,
                          height: 100,),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            a.name, textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Pin()
                  ),
                ),
              ],
            ),
          ),
        );
      },itemCount: contenListlist.length,
    ),
    );
  }
}

class Pin extends StatefulWidget {
  @override
  _PinState createState() => _PinState();
}

class _PinState extends State<Pin> {
  bool pinned = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        pinned ? Icons.star : Icons.star_border,
        color: Colors.orange,
      ),
      onPressed: () {
        setState(() {
          pinned = !pinned;
        });
      },
    );
  }
}