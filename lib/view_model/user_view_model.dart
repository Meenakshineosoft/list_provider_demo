
import '../model/user.dart';

class UserViewModel {

  final User user;

  UserViewModel({required this.user});

  int get userId {
    return user.userId;
  }

  int get id {
    return user.id;
  }

  String get  title {
   return user.title;
  }

  String get body {
    return user.body;
  }

}