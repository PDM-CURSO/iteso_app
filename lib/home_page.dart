import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App ITESO'),
      ),
      body: Column(
        children: [
          Image.network(
            "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "El ITESO, Universidad Jesuita de Guadalajara",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "San Pedro Tlaquepaque, Jal.",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  print("Hola ${counter++}");
                },
                icon: const Icon(
                  Icons.thumb_up,
                  color: Color.fromARGB(255, 6, 102, 180),
                ),
              ),
              Text("$counter"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      iconSize: 48,
                      icon: const Icon(Icons.mail),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              content: Text("Enviando correo..."),
                            ),
                          );
                      },
                    ),
                    const Text("Correo"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      iconSize: 48,
                      icon: const Icon(Icons.phone),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              content: Text("Llamando al ITESO..."),
                            ),
                          );
                      },
                    ),
                    const Text("Llamar"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      iconSize: 48,
                      icon: const Icon(Icons.directions),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              content: Text("En camino al ITESO..."),
                            ),
                          );
                      },
                    ),
                    const Text("Ruta"),
                  ],
                ),
              ],
            ),
          ),
          const Text(
            "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente), es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.",
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
