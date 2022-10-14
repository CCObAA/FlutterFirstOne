import 'dart:convert';
import 'package:flutter_application_1/domain/entity/Furniture_entity.dart';

class Furniture extends FurnitureEntity{
   late int id;
   final int weight;
   final String material;
   final int id_TypeFurniture;
   final int id_Manufacturer;


Furniture({required this.id, required this. weight,required this. material,required this. id_TypeFurniture,required this. id_Manufacturer,}):super(id:id,  weight: weight, material: material, id_TypeFurniture: id_TypeFurniture, id_Manufacturer: id_Manufacturer,);

Map<String,dynamic> toMap(){
   return{'id':id,' weight': weight,' material': material,' id_TypeFurniture': id_TypeFurniture,' id_Manufacturer': id_Manufacturer,};
}

factory Furniture.toFromMap(Map<String,dynamic> json){
   return Furniture(id:json['id'], weight:json[' weight'], material:json[' material'], id_TypeFurniture:json[' id_TypeFurniture'], id_Manufacturer:json[' id_Manufacturer'],);
}
}