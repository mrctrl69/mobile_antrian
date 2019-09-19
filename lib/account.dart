import 'package:flutter/material.dart';
import 'package:home_ui/style.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AccountPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<String> tombolakun = ['Keluar'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(widget.title),
        body: Container(
            height: 600,
            color: Colors.white,
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/img/miloz.jpeg',
                        width: 100.0, height: 100.0, fit: BoxFit.fitHeight),
                  ],
                ),
              ),
              Container(
                height: 120.0,
                child: Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 5.0, bottom: 10.0),
                        child: Text(
                          'Bambank Miloz',
                          style: heading2(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        'bambank@gmail.com',
                        style: normalstyle(),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '+62 aja dulu bozku',
                        style: miringstyle(),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Alamatnya di planet namekz',
                        style: miringstyle(),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                  child: Column(children: <Widget>[
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        margin: const EdgeInsets.only(left: 5.0),
                        height: 80.0,
                        width: 80.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Colors.redAccent,
                          color: Colors.white,
                          elevation: 3.0,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Keluar',
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ]))
            ]))));
  }
}
