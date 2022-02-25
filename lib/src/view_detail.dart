import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            child:
                const Text('This is page not prepared yet. push to go initial'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            }));
  }
}
