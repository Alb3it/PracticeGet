import 'package:flutter/material.dart';
import 'package:masterofget/controllers/controllers.dart';
import 'package:masterofget/style/styles.dart';
import 'package:masterofget/variables/variables.dart';

class Main extends StatefulWidget {
  Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;
  void _onTap(int i) {
    if (i == 0) {}
    setState(() {
      _currentIndex = i;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('maincon Init');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Views[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          onTap: _onTap,
          currentIndex: _currentIndex,
          selectedFontSize: 0,
          items: [
            BottomNavigationBarItem(
                icon: _currentIndex == 0 ? iconFirst2 : iconFirst1, label: ''),
            BottomNavigationBarItem(
                icon: _currentIndex == 1 ? iconSecond2 : iconSecond1,
                label: ''),
            BottomNavigationBarItem(
                icon: _currentIndex == 2 ? iconThird2 : iconThird1, label: ''),
            BottomNavigationBarItem(
                icon: _currentIndex == 3 ? iconFourth2 : iconFourth1,
                label: ''),
            BottomNavigationBarItem(
                icon: _currentIndex == 4 ? iconFifth2 : iconFifth1, label: ''),
          ],
          backgroundColor: ThemaColor,
        ),
      ),
    );
  }
}
