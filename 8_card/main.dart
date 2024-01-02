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
        title: const Text("Card Widget"),
      ),
      body: ListView.builder(itemBuilder: ((context, index) {
        return Card(
          margin: const EdgeInsets.all(10),
          elevation: 3,
          child: ListTile(
            leading: Text('${index+1}'),
            title: Text(arrNames[index]),
            subtitle: const Text("Number"),
            trailing: const Icon(Icons.add),
          ),
        );
      }), itemCount: arrNames.length)
    );
  }
}
