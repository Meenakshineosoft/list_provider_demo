
import 'package:dio/dio.dart';
import 'package:list_provider/model/user.dart';

class UserService {
  var dio = Dio();

  Future<List<User>> fetchUser() async {

    const url = 'https://jsonplaceholder.typicode.com/posts';

    final response = await dio.get((url));
     if(response.statusCode == 200) {
       final result = response.data;
       return result.map<User>((json) => User.fromJson(json)).toList();
     }
     else {
       throw Exception('Failed to load user data');
     }
  }

}