import 'dart:convert';
import 'package:flutter_application_1/domain/entity/UserInfo_entity.dart';

class UserInfo extends UserInfoEntity{

  UserInfo({
    super.id = 0,
    required super.surname,
    required super.name,
    required super.patronymic,
    required super.email,
    required super.idUser
  });

Map<String,dynamic> toMap(){
   return{
    'surname': surname,
    'name': name,
    'patronymic': patronymic,
    'email': email,
    'id_Users': idUser};
}

factory UserInfo.toFromMap(Map<String,dynamic> json){
   return UserInfo(
   id: json['id'] as int, 
   surname:json['surname'],
   name:json['name'],
   patronymic:json['patronymic'],
   email:json['email'],
   idUser:json['id_Users'],);
  }
}