import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        //buat secara manual
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Title'),
              subtitle: Text('subTitle'),
              trailing: Text('Trailing'),
              onTap: () {
                //code
                print('I click List1');
              },
            ),
            Divider(thickness: 2,),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('subTitle'),
              trailing: Text('Trailing'),
              onTap: () {
                //code
                print('I click List2');
              },
            ),
            Divider(thickness: 2,),
            ListTile(
              leading: Icon(Icons.place),
              title: Text('Title'),
              subtitle: Text('subTitle'),
              trailing: Text('Trailing'),
              onTap: () {
                //code
                print('I click List3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
