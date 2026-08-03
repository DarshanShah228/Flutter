import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: TextfieldExample()));

class TextfieldExample extends StatefulWidget {
  const TextfieldExample({super.key});

  @override
  State<TextfieldExample> createState() => _TextfieldExampleState();
}

class _TextfieldExampleState extends State<TextfieldExample> {
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Demo"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  label: const Text("Enter Name"),
                  //prefixIcon: Icon(Icons.account_box),//When we run then already show the the icon
                  prefix: const Icon(Icons.account_box), //When we click on textfield then show the the icon
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  label: const Text("Enter Password"),
                  //prefixIcon: Icon(Icons.password),//When we run then already show the the icon
                  prefix: const Icon(Icons.password), //When we click on textfield then show the the icon
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
