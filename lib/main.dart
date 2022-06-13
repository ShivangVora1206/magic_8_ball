// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: Magic_8_page()
  ),
);

class Magic_8_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(
            child: Text(
                'Magic 8 Ball'
            )
        ),
        backgroundColor: Colors.blue[800],
      ),
      body: Magic_8_page_stateful(),
    );
  }
}


class Magic_8_page_stateful extends StatefulWidget {
  @override
  _Magic_8_page_statefulState createState() => _Magic_8_page_statefulState();
}

class _Magic_8_page_statefulState extends State<Magic_8_page_stateful> {
    int ball_no = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: (){
                  setState(() {
                    ball_no = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$ball_no.png')
            ),
          ),
        ],
      ),
    );
  }
}
