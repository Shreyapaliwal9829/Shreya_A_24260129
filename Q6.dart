import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()=>runApp(MaterialApp(home:DarkScreen()));
class DarkScreen extends StatefulWidget{
 State<DarkScreen> createState()=>_DarkScreenState();
}
class _DarkScreenState extends State<DarkScreen>{
 bool dark=false;
 @override void initState(){super.initState();load();}
 Future<void> load()async{
  final p=await SharedPreferences.getInstance();
  setState(()=>dark=p.getBool('dark')??false);
 }
 Future<void> change(bool v)async{
  final p=await SharedPreferences.getInstance();
  setState(()=>dark=v); await p.setBool('dark',v);
 }
 Widget build(BuildContext c)=>Scaffold(
  appBar:AppBar(title:Text('Dark Mode')),
  body:Center(child:SwitchListTile(title:Text('Dark Mode'),
    value:dark,onChanged:change)));
}