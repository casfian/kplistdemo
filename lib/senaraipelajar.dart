import 'package:flutter/material.dart';

class SenaraiPelajar extends StatelessWidget {
  const SenaraiPelajar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Senarai Pelajar'),),
      body: ListView.builder(
        itemBuilder: itemBuilder
        ),
    );
  }
}