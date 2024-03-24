import 'package:flutter/material.dart';
import 'package:practica3_5c24/screens/images_screen.dart';
import 'package:practica3_5c24/screens/infinite_list_screen.dart';
import 'package:practica3_5c24/screens/inputs_screen.dart';
import 'package:practica3_5c24/screens/notifications_screen.dart';
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
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.input_rounded),
            ),
            title: Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Diferentes widgets para entradas de flutter',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            // OPCIONES DE CIRCULARPROGRESSINDICATOR
            // trailing: const CircularProgressIndicator(
            //   value: 0.35,
            //   strokeWidth: 25.0,
            //   color: AppTheme.mainColor,
            //   backgroundColor: Color.fromARGB(255, 255, 0, 0),
            trailing: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right),
            ),
            onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context) {
                return const InputsScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.list_alt_rounded),
            ),
            title: Text('ListView.builder',
                style: AppTheme.lightTheme.textTheme.headlineLarge),
            subtitle: Text(
              'Datos desde Firebase',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right),
            ),
            onTap: () {
              final ruta2 = MaterialPageRoute(builder: (context) {
                return const InfiniteListScreen();
              });
              Navigator.push(context, ruta2);
            },
          ),
          const Divider(),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.notification_add),
            ),
            title: Text('Notificaciones',
                style: AppTheme.lightTheme.textTheme.headlineLarge),
            subtitle: Text(
              'Creación de notificaciones',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right),
            ),
            onTap: () {
              final ruta3 = MaterialPageRoute(builder: (context) {
                return const NotificationsScreen();
              });
              Navigator.push(context, ruta3);
            },
          ),
          const Divider(),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.image),
            ),
            title: Text(
              'Imágenes',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Widgets de manejo de imágenes',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right),
            ),
            onTap: () {
              final ruta4 = MaterialPageRoute(builder: (context) {
                return const ImagesScreen();
              });
              Navigator.push(context, ruta4);
            },
          ),
        ],
      ),
    );
  }
}
