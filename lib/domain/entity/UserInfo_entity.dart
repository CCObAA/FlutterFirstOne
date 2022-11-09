class UserInfoEntity{
   late int id;
   final String surname;
   final String name;
   final String patronymic;
   final String email;
   final idUser;

UserInfoEntity({
  id =0,
  required this.surname,
  required this.name,
  required this.patronymic,
  required this.email,
  required this.idUser});
}