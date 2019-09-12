import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:home_ui/account.dart';
import 'package:home_ui/header.dart';
import 'package:home_ui/isikategorikepolisian.dart';
import 'package:home_ui/isisimpoldabali.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<String> populer = [
    'Dokter Gigi',
    'Dokter THT',
    'Dokter Umum',
    'Dokter Spesialis',
  ];

  List<String> kategori = [
    'Rumah Sakit',
    'Kepolisian',
    'Klinik',
    'Dukcapil',
    'Samsat',
    'Dokter/Bidan',
  ];

  List<String> kategoricon = [
    'ac_unit',
    'access_alarm',
    'accessibility',
    'accessible',
    'account_balance',
    'Dokter/Bidan',
  ];

  final headerstyle = TextStyle(
      color: Colors.pink[200],
      fontFamily: 'Bebas',
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
      letterSpacing: 0.5);

  final header2style = TextStyle(
      color: Colors.black,
      fontFamily: 'Bebas',
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
      letterSpacing: 0.5);

  String title = "Antri Skuy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(title),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 15.0),
                      child: Text(
                        'Antrian Populer :',
                        style: headerstyle,
                      ),
                    ),
                    Container(
                      height: 150.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: populer.length,
                        itemBuilder: (BuildContext context, int i) {
                          return Column(
                            children: <Widget>[
                              SizedBox(height: 20.0),
                              GestureDetector(
                                onTap: () {
                                  Null;
                                },
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      margin: const EdgeInsets.only(left: 5.0),
                                      height: 105.0,
                                      width: 105.0,
                                      child: Material(
                                        borderRadius: BorderRadius.circular(10.0),
                                        shadowColor: Colors.pinkAccent,
                                        color: Colors.white,
                                        elevation: 3.0,
                                      ),
                                    ),
                                    Text(
                                      populer[i],
                                      style: TextStyle(color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Text('POLISI',
                          style: TextStyle(
                              fontFamily: 'Bebas',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 20)),
                    ),
                    Container(
                      height: 125.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                SizedBox(height: 20.0),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  margin: const EdgeInsets.only(left: 10.0),
                                  height: 105.0,
                                  width: 105.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10.0),
                                    shadowColor: Colors.pinkAccent,
                                    color: Colors.white,
                                    elevation: 3.0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    IsiSimPoldaBali()));
                                      },
                                      child: Center(
                                        child: Text(
                                          'Pelayanan  SIM',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  height: 105.0,
                                  width: 105.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10.0),
                                    shadowColor: Colors.pinkAccent,
                                    color: Colors.white,
                                    elevation: 3.0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Null;
                                      },
                                      child: Center(
                                        child: Text(
                                          'Pelayanan SKCK',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Roboto'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  height: 105.0,
                                  width: 105.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10.0),
                                    shadowColor: Colors.pinkAccent,
                                    color: Colors.white,
                                    elevation: 3.0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Null;
                                      },
                                      child: Center(
                                        child: Text(
                                          'Pelayanan Pengaduan Masyarakat',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  margin: const EdgeInsets.only(right: 10.0),
                                  height: 105.0,
                                  width: 105.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10.0),
                                    shadowColor: Colors.pinkAccent,
                                    color: Colors.white,
                                    elevation: 3.0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Null;
                                      },
                                      child: Center(
                                        child: Text(
                                          'Pelayanan Tilang',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Roboto'),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
                            child: Text(
                              'Kategori Antrian :',
                              style: headerstyle,
                            ),
                          ),
                        ]
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 50),
                      child: GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: kategori.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3
                        ),
                        itemBuilder: (BuildContext context, int i) {
                          return Column(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  height: 105.0,
                                  width: 105.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    shadowColor: Colors.pinkAccent,
                                    color: Colors.white,
                                    elevation: 3.0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    IsiSimPoldaBali()));
                                      },
                                      child: Icon(Icons.account_box),
                                    ),
                                  ),
                                ),
                              ),
                              Text(kategori[i])
                            ],
                          );
                        },
                      ),
                    )
                  ]
                )
              ),
        )
      );
  }
}
