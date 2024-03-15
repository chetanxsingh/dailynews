import 'package:dailynews/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

TextEditingController email=TextEditingController();
 TextEditingController password=TextEditingController();

signup()async{
  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
  Get.offAll(Wrapper());
} 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SignUp")),
      body: Padding(padding: EdgeInsets.all(20.0), 
      child: Column(
      children: [
        TextField(
          controller: email,
          decoration: InputDecoration(hintText: 'Enter email'),
        ),
        TextField(
          controller: password,
          decoration: InputDecoration(hintText: 'Enter password'),

        ),
        ElevatedButton(onPressed: (()=>signup()), child: Text("SignUp"))
      ],),
    ));
  }
}