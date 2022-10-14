import 'dart:convert';
import 'package:flutter_application_1/domain/entity/userinfo_entity.dart';

class UserInfo extends UserInfoEntity{
   late int id;
   final String surname;
   final String name;
   final String patronymic;
   final String email;
   final int id_Users;


UserInfo({required this.id, required this. surname,required this. name,required this. patronymic,required this. email,required this. id_Users,}):super(id:id,  surname: surname, name: name, patronymic: patronymic, email: email, id_Users: id_Users,);

Map<String,dynamic> toMap(){
   return{' surname': surname,' name': name,' patronymic': patronymic,' email': email,' id_Users': id_Users,};
}

factory UserInfo.toFromMap(Map<String,dynamic> json){
   return UserInfo(id:json['id'], surname:json[' surname'], name:json[' name'], patronymic:json[' patronymic'], email:json[' email'], id_Users:json[' id_Users'],);
}
}