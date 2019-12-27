import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.red),
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State {
  String name = '';
  String text = '';

  void onPressed() {
    setState(() {
      if (this.name.trim().length == 0) return;
      this.text = 'Hai ' + this.name + ', apa kabar?';
    });
  }

  void onChanged(String value) {
    setState(() {
      this.name = value;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo TextField'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              onChanged: (String value) {
                onChanged(value);
              },
              decoration: InputDecoration(
                  hintText: 'Ketikkan nama lengkap',
                  hintStyle: TextStyle(fontStyle: FontStyle.normal)),
            ),
            RaisedButton(
              child: Text('Klik'),
              onPressed: () {
                onPressed();
              },
            ),
            Container(
              height: 15.0,
            ),
            Text(this.text)
          ],
        ),
      );
}
