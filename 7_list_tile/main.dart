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
        title: const Text("List Tile in List View"),
      ),
      body: ListView.separated(itemBuilder: ((context, index) {
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrNames[index]),
          subtitle: const Text("Number"),
          trailing: const Icon(Icons.add),
        );
      }), separatorBuilder: ((context, index) {
        return const Divider(height: 20, thickness: 1,);
      }), itemCount: arrNames.length)
    );
  }
}
