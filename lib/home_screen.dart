import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _text = '初始化';
  int _count = 0;

  @override
  void initState() {
    super.initState();
  }

  void _setText () {
    const timeout = const Duration(seconds: 1);
    Timer.periodic(timeout, (timer){
      if (_count > 363456324532) {
        timer.cancel();
        timer = null;
      }
      setState(() {
        _count = _count + 100;
        _text = '$_count';
      });
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home screen'),
      ),
      body: Column(
        children: <Widget>[
          Text(_text),
          FlatButton(
            child: Text('点击'),
            onPressed: _setText,
          )
        ],
      ),
    );
  }
}