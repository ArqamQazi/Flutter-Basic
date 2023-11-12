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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll View"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.green,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.cyan,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.amber,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.indigo,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11, top: 11),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.red,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.grey,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
