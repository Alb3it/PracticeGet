import 'package:flutter/material.dart';
import 'package:masterofget/components/main_components.dart';

class ViewMainMonth extends StatelessWidget {
  const ViewMainMonth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [MainSalesInfo(2)],
    )));
  }
}
