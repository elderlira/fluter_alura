import 'package:flutter/material.dart';
import 'package:alura_curso/app/task.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Projeto flutter alura'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String way = 'assets/images';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        reverse: true,
        children: [
          Task("Task 1", '$way/mascote.png'),
          Task('Task 2', '$way/meditar.jpeg'),
          Task('Task 3', '$way/livro.jpeg'),
          Task('Task 4', '$way/jogar.jpeg'),
        ],
      ),
    );
  }
}
