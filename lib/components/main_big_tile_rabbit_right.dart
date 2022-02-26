import 'package:flutter/material.dart';
import '../variables/variables.dart';
import 'package:bubble/bubble.dart';
import 'package:masterofget/components/main_big_tile.dart';

class MainBigTileRabbitRight extends StatelessWidget {
  final int type, order, border;
  MainBigTileRabbitRight(this.type, this.order, this.border);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 300,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 15,
            left: 30,
            child: Row(
              children: [
                Bubble(
                    stick: true,
                    nip: BubbleNip.rightBottom,
                    color: Colors.white,
                    radius: const Radius.circular(19),
                    nipOffset: 2,
                    elevation: 20,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: Text(
                        mainRabbitBubble[type][order],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ))
              ],
            ),
          ),
          Positioned(
              top: 110,
              left: 30,
              child: MainBigTile(type: type, border: border)),
          Positioned(right: 0, child: iconRabbitR),
        ],
      ),
    );
  }
}
