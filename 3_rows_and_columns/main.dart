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
        title: const Text("Rows and Column"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              color: Colors.purple,
              child: const Center(
                child: Text("Column 1"),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    color: Colors.green,
                    child: const Center(
                      child: Text("Column 2, Row 1"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    color: Colors.orange,
                    child: const Center(
                      child: Text("Column 2, Row 2"),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    color: Colors.red,
                    child: const Center(
                      child: Text("Column 3, Row 1"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    color: Colors.blue,
                    child: const Center(
                      child: Text("Column 3, Row 2"),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 120,
              color: Colors.yellow,
              child: const Center(
                child: Text("Column 4"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
