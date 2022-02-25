import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterofget/controllers/controllers.dart';

class CorpButtons {
  List<Widget> make(List<dynamic> corps) {
    List<Widget> buttons = [];
    for (int i = 0; i < corps.length; i++) {
      buttons.add(CorpButton(title: corps[i][1], id: corps[i][0]));
    }
    return buttons;
  }
}

class CorpButton extends StatelessWidget {
  CorpButton({Key? key, required this.title, required this.id})
      : super(key: key);
  final String title;
  final int id;
  final controller = Get.put(UserInfoController());

  void _onPressed() {
    controller.corpSet(id);
    Get.offAllNamed('/main');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        child: Text(title),
        onPressed: _onPressed,
      ),
    );
  }
}
