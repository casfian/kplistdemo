import 'package:flutter/material.dart';
import 'package:lkpistdemo/senaraipelajar.dart';

void main() => runApp(MyApp());

//root class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
      routes: <String, WidgetBuilder>{
        'senaraipelajar': (BuildContext context) => SenaraiPelajar(),
      },
    );
  }
}

//create secondary class
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('balik Skrin asal'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                //code
                print('I click List1');
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Pelajar'),
              subtitle: Text('Senarai semua pelajar Kolej'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                //code
                print('I click List2');
                Navigator.popAndPushNamed(context, 'senaraipelajar');
              },
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.place),
              title: Text('About'),
              subtitle: Text('Tentang Kolej Komuniti Kuala Pilah'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                //code
                print('I click List3');
                Navigator.pop(context);
              },
            ),
          ],
        ),
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
          Divider(
            thickness: 2,
          ),
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
          Divider(
            thickness: 2,
          ),
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
    );
  }
}
