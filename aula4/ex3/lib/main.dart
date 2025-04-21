import 'package:flutter/material.dart';

void main() {
  runApp(const MyTaskApp());
}

class MyTaskApp extends StatelessWidget {
  const MyTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TaskScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<bool> taskStatus = List.generate(5, (_) => false); // lista de tarefas

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Aviso"),
        content: const Text("Você está no App de Notas de Tarefas"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pedrosTarefas.com"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Completed Tasks"),
            ),
            const SizedBox(height: 10),
            Text(
              "voce tem  ${taskStatus.length} tarefas inclompletas",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: taskStatus.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.amberAccent,
                    child: ListTile(
                      title: Text(
                          "tarefa 2025-04-20 18:08:${index.toString().padLeft(2, '0')}"),
                      trailing: Checkbox(
                        value: taskStatus[index],
                        onChanged: (value) {
                          setState(() {
                            taskStatus[index] = value!;
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAlertDialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
