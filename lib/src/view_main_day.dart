import 'package:flutter/material.dart';
import 'package:masterofget/components/main_components.dart';

class ViewMainDay extends StatelessWidget {
  const ViewMainDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          MainSalesInfo(0),
          MainSmallTitle(0, 0),
          MainBarRabbitLeft(0, 0),
          MainTripleTiles(0, 0),
          MainSmallTitle(0, 1),
          MainBigTileRabbitRight(0, 1, 0),
          MainTripleTiles(0, 1),
          MainSmallTitle(0, 2),
          MainBigTileRabbitLeft(0, 2, 1),
          MainSmallTitle(0, 3),
          MainLastMakeUp(0, 3)
        ],
      ),
    ));
  }
}
