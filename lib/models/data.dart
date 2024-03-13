class Data {
  String? nombre;
  bool? gustoFlutter;
  int? califFlutter;
  String? mobilDev;
  bool? web;
  bool? emulador;
  bool? smartphone;
  Data(
      {required String nomb,
      required bool flutter,
      required int calif,
      required String dev,
      required bool nav,
      required bool emul,
      required bool phone}) {
    nombre = nomb;
    gustoFlutter = flutter;
    califFlutter = calif;
    mobilDev = dev;
    web = nav;
    emulador = emul;
    smartphone = phone;
  }
}
