import 'package:flutter/material.dart';
import 'package:practica3_5c24/screens/home_screen.dart';
import 'package:practica3_5c24/screens/infinite_list_screen.dart';
import 'package:practica3_5c24/screens/notifications_screen.dart';
import 'package:practica3_5c24/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Imágenes',
        ),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],
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
                Icons.list,
                color: AppTheme.backColor,
              ),
              label: "Lista",
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
          ruta = MaterialPageRoute(
              builder: (context) => const InfiniteListScreen());
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

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/imgs/huskies.jpg'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Tres huskies sonrientes',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack imageWeb() {
    return Stack(
      children: <Widget>[
        const Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: SizedBox(
            height: 450,
            width: 450,
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  'https://images.saymedia-content.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cq_auto:eco%2Cw_1200/MTk2Njc0ODUxNzAyODQzMTk4/colors-of-siberian-huskies.png',
            ),
          ),

          // Para mostrar una imagen de la web
          // Image.network(

          // ),
        ),
      ],
    );
  }
}
