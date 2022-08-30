import 'package:flutter/material.dart';

void main() => runApp(RutApp());

class RutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Andrea',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Scaffold(
        appBar: AppBar(title: Text('Gelateria da Andrea'),),
        body: Builder(builder: (context) {
          return SingleChildScrollView(
          child: Column(children: [
            Container(height: 20,),
    Text('Il gelato migliore del mondo',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),),
            Container(height: 20,),
    Image.network('https://www.beatricemargani.it/wp-content/uploads/2020/05/gelato.jpg'),
            Container(height: 20,),
    ElevatedButton(
    onPressed: () {
    SnackBar snackBar = SnackBar(
    content: Text('la mail di Andrea è andrea@gmail.com'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
    child: Text('Informazioni',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    )
    )
    ],
    ));
    })),
    );
  }
}
