import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Arqam',
      'Saad',
      'Siddique',
      'Faizan',
      'Shadab',
      'Zain',
      'Mubin',
      'Muazzam'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Friends"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            );
          },
          itemCount: arrNames.length,
        ),
      ),
    );
  }
}
