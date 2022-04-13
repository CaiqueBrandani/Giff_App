// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {

  final Map _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData['title']),
        backgroundColor: Colors.black,
        actions: <Widget> [
          IconButton( 
            icon: Icon(Icons.share),
            onPressed: (){
              Share.share(_gifData['images']['fixed_height']['url']);
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gifData['images']['fixed_height']['url']),
      ),
    );
  }
}