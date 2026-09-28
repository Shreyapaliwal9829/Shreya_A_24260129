import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Scaffold(
appBar:AppBar(title:Text('Names')),
body:ListView.builder(itemCount:names.length,itemBuilder:(_,i)=>ListTile(title:Text(names[i]))),
)));
final names=['Shreya','Riya','Priya','Neha','Anjali'];