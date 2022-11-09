import 'package:flutter_application_1/domain/entity/role_entity.dart';

class UserEntity {
  late int id;
  final String login;
  final String password;
  final int idRole; //Сделал int за место RoleEnum

  UserEntity({
    this.id = 0,
    required this.login,
    this.password = '',
    required this.idRole
  });
}