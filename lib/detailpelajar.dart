import 'package:flutter/material.dart';
import 'package:lkpistdemo/pelajar.dart';

class Detailpelajar extends StatelessWidget {
  Detailpelajar({Key? key, required this.pass}) : super(key: key);

  final Pelajar pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pelajar'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(pass.photo),
            Text(
              pass.nama,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              pass.cgpa,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
