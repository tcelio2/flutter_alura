import 'package:flutter/material.dart';
import 'package:new_project/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tarefas'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 1000),
          child: ListView(
            children: const [
              Task(
                'Passear com o Sebastian',
                'assets/images/1.png',
                1,
              ),
              Task(
                'Limpar a casa',
                'assets/images/2.jpg',
                2,
              ),
              Task(
                'Fazer comida',
                'assets/images/3.jpg',
                3,
              ),
              Task(
                'Ajudar a Clara',
                'assets/images/4.jpeg',
                4,
              ),
              Task(
                'Ajudar a Si',
                'assets/images/5.jpg',
                5,
              ),
              Task(
                'Trabalhar',
                '',
                3,
              ),
              // Task(
              //   'Almocar',
              //   '',
              //   2,
              // ),
              // Task(
              //   'Estudar',
              //   '',
              //   1,
              // ),
              // Task(
              //   'Fazer Compra',
              //   '',
              //   3,
              // ),
              // Task(
              //   'Viajar',
              //   '',
              //   2,
              // ),
              // Task('Passear', '', 5),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: const Icon(Icons.abc_sharp),
        ));
  }
}
