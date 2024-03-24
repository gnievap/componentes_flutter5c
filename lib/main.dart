import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practica3_5c24/firebase_options.dart';
import 'main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}
