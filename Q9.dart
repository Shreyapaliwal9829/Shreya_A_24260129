import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()=>runApp(MaterialApp(home:SubjectsScreen()));
class SubjectsScreen extends StatefulWidget{
 State<SubjectsScreen> createState()=>_SubjectsScreenState();
}
class _SubjectsScreenState extends State<SubjectsScreen>{
 List<String> subjects=['Java','Flutter','Python'];
 @override void initState(){super.initState();load();}
 Future<void> load()async{
  final p=await SharedPreferences.getInstance();
  setState(()=>subjects=p.getStringList('subjects')??subjects);
 }
 Future<void> save()async{
  final p=await SharedPreferences.getInstance();
  await p.setStringList('subjects',subjects);
 }
 Widget build(BuildContext c)=>Scaffold(
 appBar:AppBar(title:Text('Favourite Subjects')),
 body:ListView(children:subjects.map((s)=>ListTile(title:Text(s))).toList()),
 floatingActionButton:FloatingActionButton(onPressed:save,child:Icon(Icons.save)));
}