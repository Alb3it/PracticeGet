import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:masterofget/main.dart';
import 'package:masterofget/variables/variables.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:masterofget/style/styles.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  static final TextEditingController _id = TextEditingController();
  static final TextEditingController _pw = TextEditingController();

  String get id => _id.text;
  String get pw => _pw.text;

  void tryLogin() async {
    http.Response res = await http.post(Uri.parse(loginUrl),
        body: <String, String>{'email': id, 'password': pw});
    String response = utf8.decode(res.bodyBytes);
    Map responsejson = jsonDecode(response);
    if (responsejson['message'] == 'success') {
      const storage = FlutterSecureStorage();
      storage.write(key: response, value: 'LOGIN');
      Get.offAllNamed('/select');
    }
  }

  void trySignUp() {
    Get.toNamed('/login/signup');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: const Text(
            'Login',
            style: TextStyle(color: Colors.black),
          )),
          body: Container(
            color: ThemaColor,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextField(
                            controller: _id,
                            decoration: TextInputDecoration.IdPwDecoration,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 20),
                          child: TextField(
                            controller: _pw,
                            decoration: TextInputDecoration.IdPwDecoration,
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: ElevatedButton(
                              onPressed: tryLogin,
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff555555)),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xffe0e0e0),
                                padding: const EdgeInsets.only(
                                    left: 50, right: 50, top: 10, bottom: 10),
                                elevation: 5,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: TextButton(
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff555555)),
                              ),
                              onPressed: trySignUp,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
