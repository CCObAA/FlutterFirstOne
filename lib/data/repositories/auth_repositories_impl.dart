import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/common/data_base_request.dart';
import 'package:flutter_application_1/core/crypto/crypto.dart';
import 'package:flutter_application_1/core/exception/failure.dart';
import 'package:flutter_application_1/data/model/UserInfo.dart';
import 'package:flutter_application_1/data/model/user.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:sqflite/sqflite.dart';
import '../../core/db/data_base_helper.dart';
import '../../domain/repositories/auth_repositories.dart';

class AuthRepositoriesImpl implements AuthRepositories {
  final _db = DataBaseHelper.instance.database;

  @override
  // TODO: implement table
  String get table => DataBaseRequest.tableUsers;
  String get tableUserInfo => DataBaseRequest.tableUserInfo;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async {
    //try {
      var user = await _db.query(table,
          columns: ['login', 'password', 'id_role'],
          where: 'login = ?',
          whereArgs: [login]);

          if(user.isEmpty){
            return Left('Такого пользователя нет');
          }

          if(user.first['password'] != Crypto.crypto(password)){
            return Left(AuthPasswordFailure().errorMessage);
          }

          return Right(RoleEnum.values[(user.first['id_role'] as int) -1]);
    //} on DatabaseException catch (error) {
      //return Left(FailureDB(error.getResultCode()!).error.errorMessage);
    //}
  }

  @override
  Future<Either<String, bool>> signUp( String surname,String name,String patronymic,String email,String login, String password) async {
    // TODO: implement signUp
    //try {
      await _db.insert(
        table,
        User(
          login: login,
          password: password,
          idRole: 2//RoleEnum.user,
        ).toMap(),
      );

      final data = await _db.rawQuery('SELECT id FROM Users ORDER BY id DESC LIMIT 1');
      await _db.insert(
        tableUserInfo,
        UserInfo(
          surname: surname,
          name: name,
          patronymic: patronymic,
          email: email,
          idUser: data.last['id'],
        ).toMap(),
      );

      return const Right(true);
    //} on DatabaseException catch (error) {
  //     return Left(FailureDB(error.getResultCode()!).error.errorMessage);
  //   }
  }
}