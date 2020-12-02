import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_pet_app/src/bloc/petHandler.dart';
import 'package:my_pet_app/src/models/Pet.dart';
import 'package:my_pet_app/src/models/Client.dart';

class listaNoticias extends StatefulWidget {
  listaNoticias({Key key,this.title}): super(key: key);
  final String title;
  @override
  PageListNoticias createState() => new PageListNoticias();
}

class PageListNoticias extends State<listaNoticias> {
  List data = new List();
  BusinessLogicComponent handler;

  void initState()  {
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Noticias"),centerTitle: true,),
        body: Container(

          child: new ListView.builder(

              itemBuilder: (BuildContext context, i){

                  return new InkWell(
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Stack(
                              children: <Widget>[
                                Center(
                                    child: Image.network("https://png.pngtree.com/thumb_back/fw800/back_our/20190625/ourmid/pngtree-gym-muscle-man-cartoon-flat-background-image_255472.jpg",
                                        width: 70,height: 70)
                                ),
                              ]
                          ),
                          Text("Promo: 2X1",
                            style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify,),
                        ],
                      ),

                    ),

                  );
              }
          ),
        )
    );
  }
}