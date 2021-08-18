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
              leading: Text('Leading'),
              title: Text('Title'),
              subtitle: Text('subTitle'),
              trailing: Text('Trailing'),
              onTap: () {
                //code
                print('I click List1');
              },
            ),
            ListTile(
              leading: Text('Leading'),
              title: Text('Title'),
              subtitle: Text('subTitle'),
              trailing: Text('Trailing'),
              onTap: () {
                //code
                print('I click List2');
              },
            ),
            ListTile(
              leading: Text('Leading'),
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
