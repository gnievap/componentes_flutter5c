import 'package:flutter/material.dart';
import 'package:practica3_5c24/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
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
        ));
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
              padding: EdgeInsets.all(10),
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

  Widget imageWeb() {
    return Center(
      child: Image.network(
          'https://images.saymedia-content.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cq_auto:eco%2Cw_1200/MTk2Njc0ODUxNzAyODQzMTk4/colors-of-siberian-huskies.png'),
    );
  }
}
