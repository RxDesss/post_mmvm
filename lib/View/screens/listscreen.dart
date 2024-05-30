import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:content() ,
      ),
    );
  }
}

Widget content(){
  return Container(
    height: double.infinity,
    width: double.infinity,
    child: const Column(
      children: [
        Text("UserId : 123"),
        SizedBox(height: 10,),
         Text("Username : vicky"),
        SizedBox(height: 10,),
         Text("EmailId : vicky@gmail.com"),
        SizedBox(height: 10,),
         Text("LoginType : Doctor"),
        SizedBox(height: 10,),
         Text("Verfy : No"),
        SizedBox(height: 10,),
        
      ],
    ),
  );
}