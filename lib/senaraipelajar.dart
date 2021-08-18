import 'package:flutter/material.dart';

class SenaraiPelajar extends StatelessWidget {
  //array
  List pelajar = ['Ali', 'Ahmad', 'Abu', 'Basri'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Senarai Pelajar'),
      ),
      body: ListView.builder(
          itemCount: pelajar.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(pelajar[index]),
            );
          }),
    );
  }
}
