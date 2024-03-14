import 'package:alura_curso/difficulty.dart';
import 'package:flutter/material.dart';

class FormTask extends StatefulWidget {
  const FormTask({super.key});

  @override
  State<FormTask> createState() => _FormTaskState();
}

class _FormTaskState extends State<FormTask> {
  final formInputColor = Colors.white70;
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController urlController = TextEditingController();
  DateTime dateController = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de cadastro'),
      ),
      body: Center(
        child: Container(
          width: 375,
          height: 650,
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black26, width: 3)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nameController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Nome da tarefa',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: formInputColor,
                      filled: true),
                ),
                TextFormField(
                  controller: difficultyController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Dificuldade',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: formInputColor,
                      filled: true),
                ),
                TextFormField(
                  controller: urlController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.url,
                  decoration: InputDecoration(
                      isDense: true,
                      labelText: 'url da imagem',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: formInputColor,
                      filled: true),
                ),
                ElevatedButton(
                    onPressed: () {
                      print(nameController.text);
                      print(difficultyController.text);
                      print(urlController.text);
                      print(dateController.year);
                    },
                    child: const Text('Clique aqui'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
