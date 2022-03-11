import 'package:flutter/material.dart';
import 'package:list_provider/view_model/user_view_model.dart';

class DetailScreen extends StatelessWidget {
  final UserViewModel user;
  const DetailScreen({Key? key, required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Screen'),),
       body: Container(
           padding: const EdgeInsets.all(20.0),
         child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisSize: MainAxisSize.max,
             children: <Widget>[
             Text(user.title,
                 style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
         Text(
           user.body,
           style: const TextStyle(fontWeight: FontWeight.normal,fontSize: 15),
         ),
         ElevatedButton(
           onPressed: () {
             Navigator.pop(context);
           },
           child: const Text('Back to user list'),
         ),





          ],
        )
    )
    );
  }
}