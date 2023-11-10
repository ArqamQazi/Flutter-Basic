import 'package:flutter/material.dart';
// Buttons
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
        title: const Text("Buttons"),
      ),
      body: Column(
        children: [
          TextButton(
              child: const Text("Click here!!!"),
              onPressed: () {
                print("Hello");
              },
              onLongPress: () {
                print("Hellooo");
              }),
          ElevatedButton(
            onPressed: () {
              print("Elevated button is pressed");
            },
            child: const Text("Elevated Button"),
          ),
          OutlinedButton(
              onPressed: () {
                print("Outlined Button is pressed");
              },
              child: const Text("Outlined Button")),
        ],
      ),
    );
  }
}
