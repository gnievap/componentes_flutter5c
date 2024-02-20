import 'package:flutter/material.dart';
import 'package:practica3_5c24/theme/app_theme.dart';

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
            leading: const Icon(
              Icons.input_rounded,
              color: AppTheme.mainColor,
            ),
            title: Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Diferentes widgets para entradas de flutter',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.arrow_circle_right,
              color: AppTheme.mainColor,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.list_alt_rounded,
              color: AppTheme.mainColor,
            ),
            title: Text('ListView.builder',
                style: AppTheme.lightTheme.textTheme.headlineLarge),
            subtitle: Text(
              'Scroll infinito',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.arrow_circle_right,
              color: AppTheme.mainColor,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.notification_add,
              color: AppTheme.mainColor,
            ),
            title: Text('Notificaciones',
                style: AppTheme.lightTheme.textTheme.headlineLarge),
            subtitle: Text(
              'Creación de notificaciones',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.arrow_circle_right,
              color: AppTheme.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
