import 'package:flutter/cupertino.dart';

/// Запросы к базе данных
abstract class DataBaseRequest {
  
  static const String tableRole = 'Role';
  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль
  static const String tableUsers = 'Users'; //есть
  static const String tableOrder = 'Order'; 
  static const String tableUserInfo = 'User_Info'; //есть
  static const String tableFurniture = 'Furniture'; 
  static const String tableFurnitureColor = 'FurnitureColor'; 
  static const String tableColor = 'Color'; //есть
  static const String tableManufacturer = 'Manufacturer'; //есть
  static const String tableTypeFurniture = 'TypeFurniture'; //есть

  static String deleteTable(String table) => 'DROP TABLE $table';

  static const List<String> tableList = [
    tableRole,
    tableUsers,
    tableOrder,
    tableUserInfo,
    tableManufacturer,
    tableColor,
    tableFurnitureColor,
    tableTypeFurniture,
    tableFurniture
  ];

  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableTypeFurniture,
    _createTableUsers,
    _createTableUserInfo,
    _createTableManufacturer,
    _createTableColor,
    _createTableFurniture,
    _createTableOrder,
    _createTableFurnitureColor
  ];

  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Users

  static const String _createTableUsers =

      'CREATE TABLE "$tableUsers" ("id" INTEGER,"login" TEXT NOT NULL UNIQUE,"password" TEXT NOT NULL,"id_role" INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id"),PRIMARY KEY("id"))';

  static const String _createTableUserInfo =

      'CREATE TABLE "$tableUserInfo" ("id" INTEGER,"surname" TEXT NOT NULL,"name" TEXT NOT NULL,"patronymic" TEXT NULL,"email" TEXT NOT NULL,"id_Users" INTEGER,FOREIGN KEY("id_Users") REFERENCES "Users"("id"),PRIMARY KEY("id"))';
  
  static const String _createTableOrder =

      'CREATE TABLE "$tableOrder" ("id" INTEGER,"orderprice" INTEGER NOT NULL,"id_Furniture" INTEGER,"id_Users" INTEGER,FOREIGN KEY("id_Users") REFERENCES "Users"("id"),FOREIGN KEY("id_Furniture") REFERENCES "Furniture"("id"),PRIMARY KEY("id"))';

  static const String _createTableFurniture =

      'CREATE TABLE "$tableFurniture" ("id" INTEGER,"weight" INTEGER NOT NULL,"material" TEXT NOT NULL,"id_TypeFurniture" INTEGER,"id_Manufacturer" INTEGER,FOREIGN KEY("id_TypeFurniture") REFERENCES "TypeFurniture"("id"),FOREIGN KEY("id_Manufacturer") REFERENCES "Manufacturer"("id"),PRIMARY KEY("id"))';

  static const String _createTableFurnitureColor =

      'CREATE TABLE "$tableFurnitureColor" ("id" INTEGER,"id_Furniture" INTEGER,"id_Color" INTEGER,FOREIGN KEY("id_Furniture") REFERENCES "Furniture"("id"),FOREIGN KEY("id_Color") REFERENCES "Color"("id"),PRIMARY KEY("id"))';

  static const String _createTableColor =

      'CREATE TABLE "$tableColor" ("id" INTEGER,"NameColor" TEXT NOT NULL,PRIMARY KEY("id"))';

  static const String _createTableManufacturer =

      'CREATE TABLE "$tableManufacturer" ("id" INTEGER,"Country" TEXT NOT NULL,"NameManufacturer" TEXT NOT NULL,"CheckingAccount" INTEGER NOT NULL,PRIMARY KEY("id"))';

  static const String _createTableTypeFurniture =

      'CREATE TABLE "$tableTypeFurniture" ("id" INTEGER,"NameTypeFurniture" TEXT NOT NULL,PRIMARY KEY("id"))';
  
}