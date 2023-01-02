import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String initialRoute = "home";

  static final menuOptions = [
    /*MenuOptions(
      route: "home",
      nombre: "Home Page",
      pagina: const HomePage(),
      icon: Icons.home,
    ),*/
    MenuOptions(
      route: "listView1",
      nombre: "ListView1 Page",
      pagina: const Listview1Page(),
      icon: Icons.list_alt,
    ),
    MenuOptions(
      route: "listView2",
      nombre: "ListView2 Page",
      pagina: const Listview2Page(),
      icon: Icons.list,
    ),
    MenuOptions(
      route: "alert",
      nombre: "Alerta Page",
      pagina: const AlertPage(),
      icon: Icons.add_alert_outlined,
    ),
    MenuOptions(
      route: "card",
      nombre: "Card Page",
      pagina: const CardPage(),
      icon: Icons.add_card,
    ),
    MenuOptions(
      route: "avatar",
      nombre: "Avatar Page",
      pagina: const AvatarPage(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOptions(
      route: "animate",
      nombre: "Animated Page",
      pagina: const AnimatedPage(),
      icon: Icons.play_arrow_outlined,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoute = {};
    appRoute.addAll({"home": (_) => const HomePage()});

    for (final option in menuOptions) {
      appRoute.addAll({option.route: (_) => option.pagina});
    }
    return appRoute;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    "home": (BuildContext context) => const HomePage(),
    "listView1": (BuildContext context) => const Listview1Page(),
    "listView2": (BuildContext context) => const Listview2Page(),
    "alert": (BuildContext context) => const AlertPage(),
    "card": (BuildContext context) => const CardPage(),
  };
  */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertPage(),
    );
  }
}
