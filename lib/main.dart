import 'package:flutter/material.dart';

import './champ_manager.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.orange
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('League Of Legends'),
        ),
        body: ChampManager('Sylas'),
      ),
    );
  }
}
