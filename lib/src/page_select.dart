import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:masterofget/components/select_corp_buttons.dart';
import 'package:masterofget/controllers/controllers.dart';
import 'package:masterofget/style/styles.dart';

class Select extends StatelessWidget {
  Select({Key? key}) : super(key: key);
  final Map userInfo = Get.arguments;
  String userName = Get.arguments['userName'];
  final controller = Get.put(UserInfoController());

  void logout() {
    const storage = FlutterSecureStorage();
    storage.delete(key: jsonEncode(userInfo));
    controller.clear();
    Get.offAllNamed('/login');
  }

  void testMain() {
    Get.offAllNamed('/main');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text('select')),
            body: Column(
              children: [
                Column(
                  children: CorpButtons().make(userInfo['corpList']),
                ),
                Container(
                    color: ThemaColor,
                    child: ElevatedButton(
                      child: Text('LogOut'),
                      onPressed: logout,
                    )),
                ElevatedButton(onPressed: testMain, child: Text('Test'))
              ],
            )));
  }
}
