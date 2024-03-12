import 'package:alura_curso/app/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  String way = 'assets/images';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Projeto Flutter Alura'),
      ),
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 500),
        opacity: opacidade ? 1 : 0,
        child: ListView(
          scrollDirection: Axis.vertical,
          reverse: true,
          children: [
            Task("Task 1", '$way/mascote.png', 4),
            Task('Task 2', '$way/meditar.jpeg', 3),
            Task('Task 3', '$way/livro.jpeg', 5),
            Task('Task 4', '$way/jogar.jpeg', 1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
