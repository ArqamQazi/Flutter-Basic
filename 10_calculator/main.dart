import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        primarySwatch: Colors.blue,
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
          ),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  var numController1 = TextEditingController();
  var numController2 = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.blue.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: numController1,
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: numController2,
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            var num1 = int.parse(numController1.text);
                            var num2 = int.parse(numController2.text);
                            var sum = num1 + num2;
                            result = "$num1 + $num2 = $sum";
                          });
                        },
                        child: const Text("Add")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            var num1 = int.parse(numController1.text);
                            var num2 = int.parse(numController2.text);
                            var sum = num1 - num2;
                            result = "$num1 - $num2 = $sum";
                          });
                        },
                        child: const Text("Sub")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            var num1 = int.parse(numController1.text);
                            var num2 = int.parse(numController2.text);
                            var sum = num1 * num2;
                            result = "$num1 x $num2 = $sum";
                          });
                        },
                        child: const Text("Mul")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            var num1 = int.parse(numController1.text);
                            var num2 = int.parse(numController2.text);
                            var sum = num1 / num2;
                            result = "$num1 / $num2 = ${sum.toStringAsFixed(2)}";
                          });
                        },
                        child: const Text("Div")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  result,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ));
  }
}
