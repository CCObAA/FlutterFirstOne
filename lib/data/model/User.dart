import 'package:flutter_application_1/domain/entity/User_entity.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';
import '../../core/crypto/crypto.dart';

class User extends UserEntity {

  final String password;

  User({
    super.id = 0,
    required super.login,
    required this.password,
    required super.idRole,
  });

  Map<String, dynamic> toMap() {
    return{
      'login': login,
      'password': Crypto.crypto(password),
      'id_role': idRole,
    };
  }

  factory User.toFromMap(Map<String,dynamic> json){
    return User(
      id: json['id'],
      login: json['login'],
      password: json['password'],
      idRole: json['id_role'],//RoleEnum.values.firstWhere(
        //(element) => element.id == (json['id.role'] as int),
      //),
    );
  }
}