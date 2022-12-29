import 'package:flutter/cupertino.dart' show IconData, Widget;

class MenuOptions {
  final String route;
  final IconData icon;
  final String nombre;
  final Widget pagina;

  MenuOptions({
    required this.route,
    required this.icon,
    required this.nombre,
    required this.pagina,
  });
}
