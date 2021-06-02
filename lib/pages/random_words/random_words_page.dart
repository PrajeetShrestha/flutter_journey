import 'package:flutter/material.dart';

class RandomWordsPage extends StatelessWidget {
  const RandomWordsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Words"),
      ),
      body: Text("Random Words"),
    );
  }
}
