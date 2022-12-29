import 'package:fl_componentes/router/app_routes.dart';
import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Componentes Flutter"),
        ),
        body: ListView.separated(
          itemCount: menuOptions.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (_, int index) {
            return ListTile(
              leading: Icon(
                menuOptions[index].icon,
                color: AppTheme.primary,
              ),
              title: Text(menuOptions[index].nombre),
              onTap: () {
                //Forma 1
                /*
                final route = MaterialPageRoute(
                    builder: (BuildContext context) => const Listview1Page());
                Navigator.push(context, route);
                */

                //Forma 2
                Navigator.pushNamed(context, menuOptions[index].route);
              },
            );
          },
        ),
      ),
    );
  }
}
