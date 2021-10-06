import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
      image: NetworkImage(
          "https://otakudesho.net/wp-content/uploads/2020/10/railgun-blu-ray-8.jpeg"),
      fit: BoxFit.cover,
    )),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        nombre(),
        campoUsuario(),
        campoContrasena(),
        SizedBox(
          height: 15,
        ),
        botonEntrar()
      ],
    )),
  );
}

Widget nombre() {
  return Text("Sign in",
      style: TextStyle(
          color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold));
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget botonEntrar() {
  return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.pinkAccent,
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      ),
      onPressed: () {},
      child: Text(
        "Enter",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ));
}
