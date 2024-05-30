import 'package:flutter/material.dart';
import 'package:post_mmvm/viewmodel/homescreen_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Create an instance of HomescreenViewmodel
  final HomescreenViewmodel _viewmodel = HomescreenViewmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: content(context, _viewmodel),
      ),
    );
  }
}

Widget content(BuildContext context, HomescreenViewmodel viewmodel) {
  return Center(
    child: Container(
      height: 40,
      color: Colors.greenAccent,
      child: TextButton(
        child: Text("Post Api Call"),
        onPressed: () {
          Map<String, String> body = {
            'logintype': 'normal',
            'username': '',
            'profile_pic': '',
            'email_id': 'karthi.rock1997@gmail.com',
            'password': 'admin@123',
          };
          // Call the method using the instance
          viewmodel.fetchLoginApi(body);
        },
      ),
    ),
  );
}
