import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'calificaciones': Icons.perm_identity_sharp,
  'actividades_re': Icons.accessibility,
  'galeria': Icons.panorama,
  'eventos': Icons.receipt_long_rounded,
  'salir': Icons.exit_to_app_sharp,
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.black);
}
