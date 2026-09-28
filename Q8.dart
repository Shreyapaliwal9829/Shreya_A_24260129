import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Scaffold(
appBar:AppBar(title:Text('Colored Grid')),
body:GridView.builder(
gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
itemCount:8,itemBuilder:(_,i)=>Container(margin:EdgeInsets.all(8),
color:Colors.primaries[i%Colors.primaries.length],
child:Center(child:Text('Box ${i+1}')))),
)));