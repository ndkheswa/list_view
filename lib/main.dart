import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List view app',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListViews'),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _scrollView(context);
  }

  Widget myListView(BuildContext context) {

    // backing data
    final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
      'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
      'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
      'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
      'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
      'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
      'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
      'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
      'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

    return ListView.separated(
      itemCount: europeanCountries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(europeanCountries[index]),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
    );
  }

  Widget _ItsmyListView(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/sun.jpeg'),
            ),
            title: Text('Sun'),
            subtitle: Text('93 million miles away'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/moon.jpeg'),
            ),
            title: Text('Moon'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/stars.jpeg'),
            ),
            title: Text('Star'),
          ),
      ],
    );
  }

  Widget _myListView(BuildContext context) {

    final titles = ['bike', 'boat', 'bus', 'car',
    'railway', 'run', 'subway', 'transit', 'walk'];

    final icons = [Icons.directions_bike, Icons.directions_boat,
      Icons.directions_bus, Icons.directions_car, Icons.directions_railway,
      Icons.directions_run, Icons.directions_subway, Icons.directions_transit,
      Icons.directions_walk];

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Icon(icons[index]),
            
          ),
        );
      },
    );
  }

  Widget _scrollView(BuildContext context) {
    
  }
}