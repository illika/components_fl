import 'package:flutter/material.dart';

import 'package:fl_componentes/widgtes/widgets.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("CardPage"),
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomCardType1(),
              SizedBox(height: 10),
              CustomCardType2(
                imageUrl:
                    "https://portal.andina.pe/EDPfotografia3/Thumbnail/2021/05/11/000773582W.jpg",
                nombre: "Andina",
              ),
              SizedBox(height: 10),
              CustomCardType2(
                imageUrl:
                    "https://media.traveler.es/photos/62372c7f9999d61fe36db039/16:9/w_2991,h_1682,c_limit/india.jpg",
              ),
              SizedBox(height: 10),
              CustomCardType2(
                imageUrl:
                    "https://img2.viajar.elperiodico.com/48/48/f8/bosque-torcido-polonia-1274x846.jpg",
              ),
              SizedBox(height: 50),
              /*
              Container(
                height: 230,
                child: Image.network(
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              )
              */
            ],
          )),
    );
  }
}
