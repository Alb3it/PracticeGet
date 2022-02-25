import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:masterofget/variables/variables.dart';
import 'package:get/get.dart';
import 'package:masterofget/function/Toast.dart' as Toast;

class SignUpDetails extends StatelessWidget {
  const SignUpDetails({Key? key}) : super(key: key);

  static final TextEditingController _username = TextEditingController();
  static final TextEditingController _email = TextEditingController();
  static final TextEditingController _pw = TextEditingController();

  String get username => _username.text;
  String get email => _email.text;
  String get pw => _pw.text;

  void trySignUp() async {
    http.Response res = await http.post(Uri.parse(signUpUrl), body: {
      'certificateCode': Get.arguments['certnum'],
      'phoneNumber': Get.arguments['phonenum'],
      'username': username,
      'email': email,
      'password': pw
    });
    Map response = jsonDecode(res.body);
    if (response['message'] == 'success') {
      Get.toNamed('/login');
    } else {
      Toast.Message('Error Occured. Please Do It Again');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text('signupdetails')),
      body: Center(
        child: Column(children: [
          TextField(
            controller: _username,
            decoration: const InputDecoration(hintText: 'Write Username'),
          ),
          TextField(
            controller: _email,
            decoration: const InputDecoration(hintText: 'Write Email'),
          ),
          TextField(
            controller: _pw,
            decoration: const InputDecoration(hintText: 'Write PW'),
          ),
          ElevatedButton(onPressed: trySignUp, child: const Text('Sign Up')),
        ]),
      ),
    ));
  }
}
