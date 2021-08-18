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
          title: Text('Kolej Komuniti'),
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
        body: Center(
          child: Column(
            children: [
              Text('Kolej Komuniti Kuala Pilah'),
              Image.asset('images/kolejkomuniti.jpg'),
              //row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.red,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'senaraipelajar');
                      },
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.blue,
                      )),
                  Icon(
                    Icons.info,
                    size: 40,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 100,
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 120.0,
                        
                        child: Image.asset('images/ADAM.jpg'),
                      ),
                      Container(
                        width: 120.0,
                        
                        child: Image.asset('images/AMIRUL.jpg'),
                      ),
                      Container(
                        width: 120.0,
                        
                        child: Image.asset('images/HARIZ.jpg'),
                      ),
                      Container(
                        width: 120.0,
                        
                        child: Image.asset('images/RAFIQ.jpg'),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
