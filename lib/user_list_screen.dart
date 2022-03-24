

import 'package:flutter/material.dart';
import 'package:list_provider/detail_screen.dart';


import 'package:list_provider/view_model/user_list_view_model.dart';
import 'package:list_provider/view_model/user_view_model.dart';

import 'package:provider/provider.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Provider.of<UserListViewModel>(context, listen: false).fetchUser();

    final vm = Provider.of<UserListViewModel>(context);

    return Scaffold(
        appBar: AppBar(
            title: const Text("User List")
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: <Widget>[

              Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                ),
                ),

              Expanded(
                  child: UserList(users: vm.users))
            ])
        )

    );
  }
}

class UserList extends StatelessWidget {
  final List<UserViewModel> users;
  UserList({required this.users});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.all(10),
          title: Text(users[index].title),
          subtitle: Text(users[index].body),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(user: users[index])
               //   Text(user.body),
              ),
            );
          },
        );
      },
    );
  }
}
