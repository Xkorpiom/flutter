import 'package:flutter/material.dart';



class Champs extends StatelessWidget {
  final List <String> champs;

  Champs(this.champs) {
    print('[Champs Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Champs Widget] build()');
    return Column(
      children: champs
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/Sylas.jpg'),
                  Text(element)
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}