import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  <h1>ola<h1>
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFFf51b1b),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController pNota = TextEditingController();
  TextEditingController sNota = TextEditingController();
  String media = "";
  String situacao = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Aplicativo Média'),
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.perm_phone_msg,
                color: const Color(0xFF1722f7), size: 75.0),
            new Text(
              "Primeira Nota:",
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFFf70b5e),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: pNota,
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto"),
            ),
            new Text(
              "Segunda Nota:",
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFFea396e),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: sNota,
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFFf4230d),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto"),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Média:",
                    style: new TextStyle(
                        fontSize: 26.0,
                        color: const Color(0xFFf00e0e),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                  ),
                  new Text(
                    media,
                    style: new TextStyle(
                        fontSize: 26.0,
                        color: const Color(0xFFe30e23),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  )
                ]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Situação:",
                    style: new TextStyle(
                        fontSize: 27.0,
                        color: const Color(0xFFee2a0c),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                  ),
                  new Text(
                    situacao,
                    style: new TextStyle(
                        fontSize: 27.0,
                        color: const Color(0xFFf40d0d),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  )
                ]),
            new RaisedButton(
                key: null,
                onPressed: buttonPressed,
                color: const Color(0xFFe0e0e0),
                child: new Text(
                  "Calcular",
                  style: new TextStyle(
                      fontSize: 26.0,
                      color: const Color(0xFFe11111),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"),
                ))
          ]),
    );
  }

  void buttonPressed() {
    double p1, p2, me;
    p1 = double.parse(pNota.text);
    p2 = double.parse(sNota.text);
    me = (p1 + p2) / 2;
    setState(() {
      media = me.toStringAsFixed(2);
      if (me >= 7) {
        situacao = "Aluno Aprovado";
      } else {
        situacao = "Aluno Reprovado";
      }
    });
  }
}
