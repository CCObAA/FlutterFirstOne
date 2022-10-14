import 'dart:convert';
import 'package:flutter_application_1/domain/entity/Manufacturer_entity.dart';

class Manufacturer extends ManufacturerEntity{
   late int id;
   final String Country;
   final String NameManufacturer;
   final int CheckingAccount;


Manufacturer({required this.id, required this. Country,required this. NameManufacturer,required this. CheckingAccount,}):super(id:id,  Country: Country, NameManufacturer: NameManufacturer, CheckingAccount: CheckingAccount,);

Map<String,dynamic> toMap(){
   return{' Country': Country,' NameManufacturer': NameManufacturer,' CheckingAccount': CheckingAccount,};
}

factory Manufacturer.toFromMap(Map<String,dynamic> json){
   return Manufacturer(id:json['id'], Country:json[' Country'], NameManufacturer:json[' NameManufacturer'], CheckingAccount:json[' CheckingAccount'],);
}
}