import 'package:flutter/material.dart';
import 'package:practica3_5c24/screens/home_screen.dart';
import 'package:practica3_5c24/screens/images_screen.dart';
import 'package:practica3_5c24/screens/inputs_screen.dart';
import 'package:practica3_5c24/screens/notifications_screen.dart';
import 'package:practica3_5c24/theme/app_theme.dart';

class InfiniteListScreen extends StatefulWidget {
  const InfiniteListScreen({super.key});

  @override
  State<InfiniteListScreen> createState() => _InfiniteListScreenState();
}

class _InfiniteListScreenState extends State<InfiniteListScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          backgroundColor: AppTheme.mainColor,
          unselectedItemColor: AppTheme.backColor,
          onTap: (index) => openScreen(index, context),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppTheme.backColor,
              ),
              label: "Inicio",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.input_sharp,
                color: AppTheme.backColor,
              ),
              label: "Entradas",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_add,
                color: AppTheme.backColor,
              ),
              label: "Notificaciones",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.image,
                color: AppTheme.backColor,
              ),
              label: "Imágenes",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.exit_to_app,
                color: AppTheme.backColor,
              ),
              label: "Salir",
            ),
          ],
          unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium),
    );
  }

  openScreen(int index, BuildContext context) {
    setState(() {
      MaterialPageRoute ruta =
          MaterialPageRoute(builder: (context) => const HomeScreen());

      switch (index) {
        case 0:
          ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
        case 1:
          ruta = MaterialPageRoute(builder: (context) => const InputsScreen());
          break;
        case 2:
          ruta = MaterialPageRoute(
              builder: (context) => const NotificationsScreen());
          break;
        case 3:
          ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
          break;
      }
      selectedIndex = index;
      //print('selectedIndex = $selectedIndex');
      Navigator.push(context, ruta);
    });
  }
}
