import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Scaffold(
appBar:AppBar(title:Text('Icon Grid')),
body:GridView.count(crossAxisCount:3,children:List.generate(9,
(i)=>Card(child:Icon(Icons.star,size:40)))),
)));