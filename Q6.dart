import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Scaffold(
appBar:AppBar(title:Text('Horizontal List')),
body:ListView.builder(scrollDirection:Axis.horizontal,itemCount:10,
itemBuilder:(_,i)=>Container(width:120,margin:EdgeInsets.all(8),color:Colors.blue,
child:Center(child:Text('Item ${i+1}',style:TextStyle(color:Colors.white))))),
)));