import 'package:flutter/material.dart';
import 'package:masterofget/components/main_small_tile.dart';

class MainTripleTiles extends StatelessWidget {
  final int type, order;
  MainTripleTiles(this.type, this.order);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainSmallTile(type, order, 0),
            MainSmallTile(type, order, 1),
            MainSmallTile(type, order, 2)
          ],
        ));
  }
}
