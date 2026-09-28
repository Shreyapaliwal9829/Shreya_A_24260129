import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:CounterScreen()));
class CounterScreen extends StatefulWidget{
State<CounterScreen> createState()=>_CounterScreenState();
}
class _CounterScreenState extends State<CounterScreen>{
int count=0;
Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('StatefulWidget')),
body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[
Text('Counter: $count',style:TextStyle(fontSize:25)),
ElevatedButton(onPressed:()=>setState(()=>count++),child:Text('Increase')),
])));
}