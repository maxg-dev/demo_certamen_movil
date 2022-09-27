import 'package:flutter/material.dart';

class IceCreamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ice Cream?'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
          child: Icon(
        Icons.icecream,
        color: Colors.pink,
        size: 200,
      )),
    );
  }
}
