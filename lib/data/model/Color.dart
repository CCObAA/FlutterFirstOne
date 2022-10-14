import 'dart:convert';
import 'package:flutter_application_1/domain/entity/Color_entity.dart';

class Color extends ColorEntity{
   late int id;
   final String NameColor;


Color({required this.id, required this. NameColor,}):super(id:id,  NameColor: NameColor,);

Map<String,dynamic> toMap(){
   return{' NameColor': NameColor,};
}

factory Color.toFromMap(Map<String,dynamic> json){
   return Color(id:json['id'], NameColor:json[' NameColor'],);
}
}