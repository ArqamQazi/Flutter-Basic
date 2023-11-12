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
        title: const Text("Rows and Column"),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 170,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 170,
                  color: Colors.blue[100],
                  child: Center(
                    child: Text("Strawberry Pavola"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 170,
                  color: Colors.blue[100],
                  child: Center(
                    child: Text(
                        "This beautiful strawberry pavlova dessert, a favorite recipe of Teeswater egg farmers Peter and Adriana Van Zeeland, is perfect for any occasion."),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 170,
                  color: Colors.blue[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 12,
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                          ),
                        ],
                      ),
                      Text("170 Reviews"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 170,
                  height: 70,
                  color: Colors.blue[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.food_bank),
                          Text("COCK"),
                          Text("1 hr"),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.food_bank),
                          Text("COCK"),
                          Text("1 hr"),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.food_bank),
                          Text("COCK"),
                          Text("1 hr"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          Expanded(child: Image.asset('assets/images/sp.jpg') ,),
        ],
        
      ),
    );
  }
}
