import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? nombre;

  const CustomCardType2({
    Key? key,
    required this.imageUrl,
    this.nombre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          /*
          Image(
            image: NetworkImage(
                "https://media.traveler.es/photos/62372c7f9999d61fe36db039/16:9/w_2991,h_1682,c_limit/india.jpg"),
          ),
          */
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage("assets/jar-loading.gif"),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (nombre != null)
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(nombre!),
            )
        ],
      ),
    );
  }
}
