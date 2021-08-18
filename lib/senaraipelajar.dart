import 'package:flutter/material.dart';
import 'package:lkpistdemo/pelajar.dart';

class SenaraiPelajar extends StatelessWidget {
  //array
  List<Pelajar> pelajar = [
    Pelajar('Ali', 'images/ADAM.jpg', '4.0'),
    Pelajar('Ahmad', 'images/AMIRUL.jpg', '3.8'),
    Pelajar('Abu', 'images/HARIZ.jpg', '3.6'),
    Pelajar('Basri', 'images/RAFIQ.jpg', '3.9')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Senarai Pelajar'),
      ),
      body: ListView.builder(
          itemCount: pelajar.length,
          itemBuilder: (context, index) {
            //return sebuat widget UI you buat sendiri
            return Container(
              margin: EdgeInsets.all(10),
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Image.asset(pelajar[index].photo),
                    Text(pelajar[index].cgpa, style: TextStyle(fontSize: 25),),
                    SizedBox(width: 30,),
                    Text(pelajar[index].nama, style: TextStyle(fontSize: 25, color: Colors.red),),
                    SizedBox(width: 30,),
                    
                  ],
                ),
              ),
            );
          }),
    );
  }
}
