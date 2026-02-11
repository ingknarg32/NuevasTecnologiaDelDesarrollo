import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eco Tracker PoC',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const EcoTrackerPage(),
    );
  }
}

class EcoTrackerPage extends StatefulWidget {
  const EcoTrackerPage({super.key});

  @override
  State<EcoTrackerPage> createState() => _EcoTrackerPageState();
}

class _EcoTrackerPageState extends State<EcoTrackerPage> {
  final List<String> _ecoPoints = [];
  final TextEditingController _controller = TextEditingController();

  void _addEcoPoint() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _ecoPoints.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DevOps PoC: Android & Windows'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Nombre del Punto Ecológico',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addEcoPoint,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: const Text('Registrar Punto'),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _ecoPoints.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.eco, color: Colors.green),
                      title: Text(_ecoPoints[index]),
                      subtitle: Text('Punto #${index + 1}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
