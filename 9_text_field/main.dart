import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String userInput = '';
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("LOGin"),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 320,
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "Eg.abc@gmail.com",
                  prefixIcon: const Icon(Icons.email, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 2.0,
                        color: Colors.red,
                      )),
                ),
               
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 320,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    userInput = textEditingController.text;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.red),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(userInput),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
