import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Scaffold(
appBar:AppBar(title:Text('ListTile')),
body:ListView(children:[
ListTile(leading:Icon(Icons.person),title:Text('Shreya'),subtitle:Text('BCA Student')),
ListTile(leading:Icon(Icons.person),title:Text('Riya'),subtitle:Text('BCA Student')),
ListTile(leading:Icon(Icons.person),title:Text('Priya'),subtitle:Text('BCA Student')),
])));