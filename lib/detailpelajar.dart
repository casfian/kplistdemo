import 'package:flutter/material.dart';

class Detailpelajar extends StatelessWidget {
  const Detailpelajar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Pelajar'),),
      body: Center(
        child: Text('Detail pelajar'),
      ),
    );
  }
}