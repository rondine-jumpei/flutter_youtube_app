import 'package:flutter/material.dart';

class VideoDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: FloatingActionButton(
            // Within the SecondRoute widget
            onPressed: () {
          Navigator.pop(context);
        }),
      ),
    );
  }
}

