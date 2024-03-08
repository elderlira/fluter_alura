import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;
  const Task(this.nome, this.foto, this.dificuldade, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  var nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                      width: 100,
                      height: 100,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 10.0, bottom: 8.0),
                        child: Image.asset(
                          widget.foto,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.nome,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  size: 20,
                                  color: widget.dificuldade >= 1
                                      ? Colors.amber
                                      : Colors.amber[100]),
                              Icon(Icons.star,
                                  size: 20,
                                  color: widget.dificuldade >= 2
                                      ? Colors.amber
                                      : Colors.amber[100]),
                              Icon(Icons.star,
                                  size: 20,
                                  color: widget.dificuldade >= 3
                                      ? Colors.amber
                                      : Colors.amber[100]),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: widget.dificuldade >= 4
                                    ? Colors.amber
                                    : Colors.amber[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: widget.dificuldade >= 5
                                    ? Colors.amber
                                    : Colors.amber[100],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            shadowColor: Colors.black),
                        onPressed: () {
                          setState(() {
                            if (nivel < 20) {
                              nivel += 1;
                            }
                          });
                        },
                        child: const SizedBox(
                          height: 50,
                          width: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.white,
                              ),
                              Text(
                                'UP',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: 180,
                        child: LinearProgressIndicator(
                            color: Colors.amber, value: nivel / 20)),
                    Text(
                      'Nivel: $nivel',
                      style: const TextStyle(color: Colors.white),
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
