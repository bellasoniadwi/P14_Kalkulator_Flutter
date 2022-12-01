import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tugas 14"), backgroundColor: Color.fromARGB(255, 243, 165, 191),
        ),
        body: AddTwoNumbers(),
      ),
    );
  }
}

class AddTwoNumbers extends StatefulWidget {
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  TextEditingController resultcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
              child: Text(
                "KALKULATOR\n",
                style: TextStyle(color: Color.fromARGB(255, 243, 165, 191), 
                fontWeight: FontWeight.bold,
                fontSize: 40),
              ),
            ),
          TextField(
            keyboardType: TextInputType.number,
            controller: num1controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nilai 1',
              hintText: 'Masukkan Angka 1',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: num2controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nilai 2',
              hintText: 'Masukkan Angka 2',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: resultcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Hasil',
              hintText: 'Hasil Kalkulasi',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              ElevatedButton(
                child: Text("+"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) +
                        int.parse(num2controller.text);
                    resultcontroller.text = sum.toString();
                  });
                },
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 243, 165, 191),)
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("-"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) -
                        int.parse(num2controller.text);
                    resultcontroller.text = sum.toString();
                  });
                },
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 243, 165, 191),)
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("*"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) *
                        int.parse(num2controller.text);
                    resultcontroller.text = sum.toString();
                  });
                },
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 243, 165, 191),)
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("/"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) ~/
                        int.parse(num2controller.text);
                    resultcontroller.text = sum.toString();
                  });
                },
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 243, 165, 191),)
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}