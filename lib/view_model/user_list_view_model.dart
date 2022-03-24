import 'package:flutter/cupertino.dart';
import 'package:list_provider/service/user_service.dart';
import 'package:list_provider/view_model/user_view_model.dart';

class UserListViewModel extends ChangeNotifier {

  List <UserViewModel> users = <UserViewModel>[];

  Future<void> fetchUser() async {
    final results = await UserService().fetchUser();
    users = results.map((item) => UserViewModel(user: item)).toList();
    notifyListeners();
  }
}