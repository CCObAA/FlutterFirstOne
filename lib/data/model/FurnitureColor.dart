import 'dart:convert';
import 'package:flutter_application_1/domain/entity/FurnitureColor_entity.dart';

class FurnitureColor extends FurnitureColorEntity{
   late int id;
   final int id_Furniture;
   final int id_Color;


FurnitureColor({required this.id, required this. id_Furniture,required this. id_Color,}):super(id:id,  id_Furniture: id_Furniture, id_Color: id_Color,);

Map<String,dynamic> toMap(){
   return{' id_Furniture': id_Furniture,' id_Color': id_Color,};
}

factory FurnitureColor.toFromMap(Map<String,dynamic> json){
   return FurnitureColor(id:json['id'], id_Furniture:json[' id_Furniture'], id_Color:json[' id_Color'],);
}
}