import 'dart:convert';
import 'package:flutter_application_1/domain/entity/Order_entity.dart';

class Order extends OrderEntity{
   late int id;
   final int orderprice;
   final int id_Users;
   final int id_Furniture;


Order({required this.id, required this. orderprice,required this. id_Users,required this. id_Furniture,}):super(id:id,  orderprice: orderprice, id_Users: id_Users, id_Furniture: id_Furniture,);

Map<String,dynamic> toMap(){
   return{'id':id,' orderprice': orderprice,' id_Users': id_Users,' id_Furniture': id_Furniture,};
}

factory Order.toFromMap(Map<String,dynamic> json){
   return Order(id:json['id'], orderprice:json[' orderprice'], id_Users:json[' id_Users'], id_Furniture:json[' id_Furniture'],);
}
}