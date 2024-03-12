import 'package:flutter/material.dart';
import 'package:alura_curso/app/task.dart';
// import 'package:alura_curso/store/buttonStore.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(
      // ChangeNotifierProvider(
      //   create: (context) => ButtonStore(), child:
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  bool opacity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 2000),
        opacity: opacity ? 1 : 0,
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
        onPressed: () => {
          (setState(() {
            print(opacity);
            opacity != opacity;
            print(opacity);
          }))
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
