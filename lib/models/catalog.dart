import 'package:flutter/material.dart';

class Item{

  final String id;
  final String name;
  final int price;
  final String description; 
  final String color;
  final String image;


  Item({required this.id,required this.name,required this.price,required this.color,required this.image , required this.description});

  final products = {
    Item(id: "jay01",
    name: "iphone13",
    price: 999,
    description : "Apple Iphone 13 with ios16 update",
    color: "#7FFF00",
    image: "https://m.media-amazon.com/images/I/61-r9zOKBCL._SL1500_.jpg"  
    ) 
  };

}