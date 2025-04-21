import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyFormPage(),
    );
  }
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dataController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _dataController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final phone = _phoneController.text;
      final data = _dataController.text;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Name: $name\nPhone: $phone\nDATA: $data'),
        ),
      );
    }
  }

  Widget _buildInputRow(
      IconData icon, TextEditingController controller, String hint) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 8),
        Expanded(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              border: const UnderlineInputBorder(),
            ),
            validator: (value) =>
                value == null || value.isEmpty ? 'Required' : null,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildInputRow(Icons.person, _nameController, 'Name'),
              const SizedBox(height: 10),
              _buildInputRow(Icons.phone, _phoneController, 'Phone'),
              const SizedBox(height: 10),
              _buildInputRow(Icons.calendar_today, _dataController, 'Date'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
