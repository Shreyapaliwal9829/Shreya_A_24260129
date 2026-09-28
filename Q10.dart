import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()=>runApp(MaterialApp(home:ClearScreen()));
class ClearScreen extends StatelessWidget{
 Future<void> clear()async{
  final p=await SharedPreferences.getInstance();
  await p.clear();
 }
 Widget build(BuildContext c)=>Scaffold(
 appBar:AppBar(title:Text('Clear Data')),
 body:Center(child:ElevatedButton(
 onPressed:()=>clear(),child:Text('Clear Stored Data'))));
}