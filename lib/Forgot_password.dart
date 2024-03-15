import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
 TextEditingController email=TextEditingController();


reset()async{
  await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
} 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forgot Password")),
      body: Padding(padding: EdgeInsets.all(20.0), 
      child: Column(
      children: [
        TextField(
          controller: email,
          decoration: InputDecoration(hintText: 'Enter email'),
        ),
        
        ElevatedButton(onPressed: (()=>reset()), child: Text("send link"))
      ],),
    ));
  }
}