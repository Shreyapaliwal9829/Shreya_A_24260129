import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()=>runApp(MaterialApp(home:NameScreen()));

class NameScreen extends StatefulWidget {
  State<NameScreen> createState()=>_NameScreenState();
}
class _NameScreenState extends State<NameScreen> {
  final controller=TextEditingController(); String name='';
  @override void initState(){super.initState(); loadName();}
  Future<void> loadName() async {
    final p=await SharedPreferences.getInstance();
    setState(()=>name=p.getString('name')??'');
  }
  Future<void> saveName() async {
    final p=await SharedPreferences.getInstance();
    await p.setString('name',controller.text);
    setState(()=>name=controller.text);
  }
  Widget build(BuildContext c)=>Scaffold(
    appBar:AppBar(title:Text('Save Name')),
    body:Padding(padding:EdgeInsets.all(20),child:Column(children:[
      TextField(controller:controller,decoration:InputDecoration(labelText:'Name')),
      ElevatedButton(onPressed:saveName,child:Text('Save')),
      Text('Saved Name: $name')
    ])));
}