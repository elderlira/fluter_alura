import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String nome;

  const Task(this.nome, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

//responsavel pela mudanca do estado
class _TaskState extends State<Task> {
  var nivel = 10;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            color: Colors.blueAccent,
            height: 150,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black12,
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      width: 180,
                      child: Text(
                        widget.nome,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nivel += 1;
                            print(nivel);
                          });
                        },
                        child: Icon(Icons.arrow_drop_up))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.star_outline),
                    Text(
                      'Nivel: $nivel',
                      style: TextStyle(color: Colors.amberAccent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
