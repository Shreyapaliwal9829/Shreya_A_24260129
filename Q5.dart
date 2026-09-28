import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()=>runApp(MaterialApp(home:CounterScreen()));
class CounterScreen extends StatefulWidget{
  State<CounterScreen> createState()=>_CounterScreenState();
}
class _CounterScreenState extends State<CounterScreen>{
  int count=0;
  @override void initState(){super.initState();load();}
  Future<void> load()async{
    final p=await SharedPreferences.getInstance();
    setState(()=>count=p.getInt('counter')??0);
  }
  Future<void> add()async{
    final p=await SharedPreferences.getInstance();
    setState(()=>count++);
    await p.setInt('counter',count);
  }
  Widget build(BuildContext c)=>Scaffold(
    appBar:AppBar(title:Text('Saved Counter')),
    body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,
      children:[Text('$count',style:TextStyle(fontSize:30)),
      ElevatedButton(onPressed:add,child:Text('Increase'))])));
}