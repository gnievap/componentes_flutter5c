import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.mode_of_travel),
            title: Text(
              'KC campeones del SB 58',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '11-02-2024 - Las Vegas',
            ),
            trailing: Icon(Icons.arrow_circle_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text(
              'KC campeones del SB 57',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('10-02-2023 - Arizona'),
            trailing: Icon(Icons.arrow_circle_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.flight),
            title: Text(
              'KC campeones del SB 54',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('02-02-2020 - Miami'),
            trailing: Icon(Icons.arrow_circle_right),
          ),
        ],
      ),
    );
  }
}
