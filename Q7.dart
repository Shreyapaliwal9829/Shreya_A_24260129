import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()=>runApp(MaterialApp(home:LoginScreen()));
class LoginScreen extends StatefulWidget{
 State<LoginScreen> createState()=>_LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen>{
 bool remember=false;
 @override void initState(){super.initState();load();}
 Future<void> load()async{
  final p=await SharedPreferences.getInstance();
  setState(()=>remember=p.getBool('remember')??false);
 }
 Future<void> save(bool v)async{
  final p=await SharedPreferences.getInstance();
  setState(()=>remember=v); await p.setBool('remember',v);
 }
 Widget build(BuildContext c)=>Scaffold(
 appBar:AppBar(title:Text('Remember Me')),
 body:Column(children:[
 TextField(decoration:InputDecoration(labelText:'Username')),
 TextField(decoration:InputDecoration(labelText:'Password'),obscureText:true),
 CheckboxListTile(title:Text('Remember Me'),value:remember,onChanged:(v)=>save(v??false)),
 ElevatedButton(onPressed:(){},child:Text('Login'))
 ]));
}