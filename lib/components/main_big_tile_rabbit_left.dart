import 'package:flutter/material.dart';
import '../variables/variables.dart';
import 'package:bubble/bubble.dart';
import 'package:masterofget/components/main_big_tile.dart';

class MainBigTileRabbitLeft extends StatelessWidget {
  final int type, order, border;
  MainBigTileRabbitLeft(this.type, this.order, this.border);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
        height: 290,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 25,
              right: 30,
              child: Row(
                children: [
                  Bubble(
                      stick: true,
                      nip: BubbleNip.leftBottom,
                      color: Colors.white,
                      radius: const Radius.circular(19),
                      nipOffset: 2,
                      elevation: 20,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 105),
                        child: Text(
                          'ㄹㅇㅋㅋ',
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
            Positioned(left: 0, child: iconRabbit),
          ],
        ),
      ),
    );
  }
}
