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
    var arrNames = ['Arqam', 'Saad', 'Faizan'];
    var arrContactNo = ['932358XXXX', '986787XXXX', '959408XXXX'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(11),
            color: Colors.white70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(arrNames[index], style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500), ),
                  ],
                ),
                Row(
                  children: [
                    Text(arrContactNo[index], style: const TextStyle(fontSize: 20),),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: arrNames.length,
      ),
    );
  }
}
