import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:ProductScreen()));
class Product{String name;double price;Product(this.name,this.price);}
class ProductScreen extends StatelessWidget{
final products=[Product('Laptop',55000),Product('Phone',25000),
Product('Headphones',2000),Product('Keyboard',1500)];
Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Products')),
body:ListView.builder(itemCount:products.length,itemBuilder:(_,i)=>ListTile(
title:Text(products[i].name),trailing:Text('₹${products[i].price}'))));
}