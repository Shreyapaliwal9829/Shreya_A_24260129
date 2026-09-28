import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()=>runApp(MaterialApp(home:ValuesScreen()));
class ValuesScreen extends StatefulWidget{
 State<ValuesScreen> createState()=>_ValuesScreenState();
}
class _ValuesScreenState extends State<ValuesScreen>{
 final name=TextEditingController(),email=TextEditingController(),age=TextEditingController();
 String result='';
 Future<void> save()async{
  final p=await SharedPreferences.getInstance();
  await p.setString('name',name.text); await p.setString('email',email.text);
  await p.setInt('age',int.tryParse(age.text)??0);
  setState(()=>result='Saved: ${name.text}, ${email.text}, ${age.text}');
 }
 Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Multiple Values')),
 body:Padding(padding:EdgeInsets.all(16),child:Column(children:[
 TextField(controller:name,decoration:InputDecoration(labelText:'Name')),
 TextField(controller:email,decoration:InputDecoration(labelText:'Email')),
 TextField(controller:age,decoration:InputDecoration(labelText:'Age')),
 ElevatedButton(onPressed:save,child:Text('Save')),Text(result)
 ])));
}