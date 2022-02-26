import 'package:flutter/material.dart';
import '../variables/variables.dart';

class MainSmallTitle extends StatelessWidget {
  final int type;
  final int order;
  MainSmallTitle(this.type, this.order);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 40, left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              mainSmallTitle[type][order],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            )
          ],
        ));
  }
}
