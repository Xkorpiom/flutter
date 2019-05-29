import 'package:flutter/material.dart';

import './champs.dart';

class ChampManager extends StatefulWidget {
  final String startingChamp;
  ChampManager(this.startingChamp) {
    print('[ChampManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ChampManager Widget] createState()');
    return _ChampManagerState();
  }
}

class _ChampManagerState extends State<ChampManager> {
  List<String> _champs = [];

  @override
  void initState() {
    print('[ChampManager State] initState');
    _champs.add(widget.startingChamp);
    super.initState();
  }

  @override
  void didUpdateWidget(ChampManager oldWidget) {
    print('[ChampManager State] didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[ChampManager State] build()');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              _champs.add('Amumu');
            });
          },
          child: Text('Añadir Campeón'),
        ),
      ),
      Champs(_champs)
    ],);
  }
}
