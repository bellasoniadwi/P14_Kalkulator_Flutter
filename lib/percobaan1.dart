import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ini Judul Pertemuan 14"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Container(
              child: Text(
                "Ini Container 1",
                style: TextStyle(color: Colors.amber[700]),
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(labelText: "Nilai 1"),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: myController1,
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(labelText: "Nilai 2"),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: myController2,
              ),
            )
          ],
        ),
        floatingActionButton: BackButton(
          onPressed: () {
            myController2.text = myController1.text;
          },
        ),
      ),
    );
  }
}

// note dalam satu layar pasti ada scaffold (header, yang tengan, battom bar-> untuk control)
// pengombinasian statefull dan stateless sangat dimungkinkan
//body hanya bisa mengeload satu widget