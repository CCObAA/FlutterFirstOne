import 'dart:convert';
import 'package:flutter_application_1/domain/entity/TypeFurniture_entity.dart';

class TypeFurniture extends TypeFurnitureEntity{
   late int id;
   final String NameTypeFurniture;


TypeFurniture({required this.id, required this. NameTypeFurniture,}):super(id:id,  NameTypeFurniture: NameTypeFurniture,);

Map<String,dynamic> toMap(){
   return{' NameTypeFurniture': NameTypeFurniture,};
}

factory TypeFurniture.toFromMap(Map<String,dynamic> json){
   return TypeFurniture(id:json['id'], NameTypeFurniture:json[' NameTypeFurniture'],);
}
}