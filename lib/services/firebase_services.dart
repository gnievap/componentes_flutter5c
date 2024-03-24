import 'package:cloud_firestore/cloud_firestore.dart';

// 1. Crear una instancia de la base de datos
FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getMascotas() async {
  List mascotas = [];

  // Abrir la base de datos mascotas (conectar)
  CollectionReference cfMascotas = db.collection('mascotas');

  // Recuperar los datos
  QuerySnapshot queryMascotas = await cfMascotas.get();
  for (var documento in queryMascotas.docs) {
    mascotas.add(documento);
  }
  return mascotas;
}
