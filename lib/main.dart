
import 'package:flutter/material.dart';
import 'package:list_provider/user_list_screen.dart';
import 'package:list_provider/view_model/user_list_view_model.dart';
import 'package:provider/provider.dart';
void main() => runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "User List",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home:
        ChangeNotifierProvider(
          create: (context) => UserListViewModel(),
          child: const UserListScreen(),
        )
    );
  }
}