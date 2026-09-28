import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Scaffold(
appBar:AppBar(title:Text('Five Items')),
body:ListView(children:[1,2,3,4,5].map((i)=>ListTile(title:Text('Item $i'))).toList()),
)));