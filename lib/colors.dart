import 'package:flutter/material.dart';

class Cor {
  static final Color azulTurqueza = Color.fromRGBO(109, 239, 255, 1);
  static final Color azulCeu = Color.fromRGBO(72, 151, 254, 1);
  static final Color bgEsc1 = Color.fromRGBO(84, 89, 111, 1);
  static final Color bgEsc2 = Color.fromRGBO(49, 51, 64, 1);
  static final Color fonteEscura = Color.fromRGBO(69, 98, 111, 1);
  static final Color bgBarraDeslizante = Color.fromRGBO(93, 97, 124, 1);

  static LinearGradient gradienteAzul = LinearGradient(
      colors: [azulTurqueza, azulCeu],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);

  static LinearGradient gradienteEscuro = LinearGradient(
      colors: [bgEsc1, bgEsc1, bgEsc2, bgEsc2],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
}
