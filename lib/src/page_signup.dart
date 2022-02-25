import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:masterofget/variables/variables.dart';
import 'package:http/http.dart' as http;
import 'package:masterofget/function/Toast.dart' as Toast;
import 'package:masterofget/src/page_signupdetails.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  static final TextEditingController _pn = TextEditingController();
  static final TextEditingController _certnum = TextEditingController();

  String get phonenumber => _pn.text;
  String get certnum => _certnum.text;

  void sendMessage() async {
    await http.get(Uri.parse(sendMUrl + phonenumber));
    Toast.Message('Message Sended');
  }

  void certificate() async {
    http.Response res = await http.post(Uri.parse(sendMUrl + phonenumber),
        body: {'certificateCode': certnum});
    Map message = jsonDecode(res.body);
    if (message['message'] == 'success') {
      Get.toNamed('/login/signup/details',
          arguments: {'phonenum': phonenumber, 'certnum': certnum});
    } else {
      Toast.Message("Wrong Number");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text('SignUp')),
            body: Center(
              child: Container(
                  child: Column(
                children: [
                  TextField(
                    controller: _pn,
                    decoration:
                        InputDecoration(hintText: 'Enter Your Phone Number'),
                  ),
                  ElevatedButton(
                      onPressed: sendMessage,
                      child: Text('Push to Send Message')),
                  TextField(
                    controller: _certnum,
                    decoration:
                        InputDecoration(hintText: 'Enter your Certification'),
                  ),
                  ElevatedButton(
                      onPressed: certificate, child: Text('Certificate'))
                ],
              )),
            )));
  }
}
