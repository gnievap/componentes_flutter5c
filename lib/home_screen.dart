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
        children: [
          ListTile(
            leading: const Icon(Icons.mode_of_travel),
            title: Text(
              'KC campeones del SB 58',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text(
              '11-02-2024 - Las Vegas',
            ),
            trailing: const Icon(Icons.arrow_circle_right),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.flag),
            title: Text(
              'KC campeones del SB 57',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('10-02-2023 - Arizona'),
            trailing: const Icon(Icons.arrow_circle_right),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.flight),
            title: Text(
              'KC campeones del SB 54',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('02-02-2020 - Miami'),
            trailing: const Icon(Icons.arrow_circle_right),
          ),
        ],
      ),
    );
  }
}
