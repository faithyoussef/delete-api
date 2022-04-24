import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

const url = "https://jsonplaceholder.typicode.com/posts";
void main() {
  runApp(
      MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delete api',
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
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("delete apiiiii"),
      ),
      body: Column(children: [
        Row(
          children: [
            Text("M"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 100.0),
                child: TextField(
                  controller: title,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  maxLength: 50,
                ),
              ),
            ),
          ],
        ),
        ElevatedButton(
          child: Text("delete data"),
          onPressed: () {
            record("https://jsonplaceholder.typicode.com/posts");
          },
        ),
      ]),
    );
  }
}

Future<void> record(String url) async {
  try {
    print(url);
    final result = await http.delete(Uri.parse(url));
    print("ok u deleted it ");
  } catch (title) {
    print(title.toString());
  }
}