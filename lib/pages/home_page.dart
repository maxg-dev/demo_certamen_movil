import 'package:demo_certamen/pages/list_view_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(MdiIcons.sword),
        title: Center(
          child: Column(
            children: [Text('Unidad 1'), Text('author: maxg-dev')],
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Icon(MdiIcons.bookOpen, size: 200, color: Colors.red),
            Spacer(),
            nuevoBoton(context, 1, Colors.pink, 'List View'),
            nuevoBoton(context, 2, Colors.cyan, 'Tabs'),
            nuevoBoton(context, 3, Colors.purple, 'Páginas'),
            nuevoBoton(context, 4, Colors.orange, 'Imágenes'),
            nuevoBoton(context, 4, Colors.yellow, 'Drawer'),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green.shade100,
    );
  }

  ElevatedButton nuevoBoton(
      BuildContext context, int numPage, Color color, String texto) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          fixedSize: MaterialStateProperty.all(Size(200, 10))),
      onPressed: () => navegar(context, numPage),
      child: Text(texto),
    );
  }

  void navegar(BuildContext context, int numPagina) {
    // Hacer listado de las paginas
    List paginas = [ListViewPage()];

    // Generar el objeto de ruteo
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => paginas[numPagina - 1],
    );

    //Entrar a la página
    Navigator.push(context, route);
  }
}
