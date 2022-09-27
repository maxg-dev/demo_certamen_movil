import 'package:demo_certamen/pages/list_view_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(MdiIcons.sword),
        title: Text('Certamen 1 - Unidades'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Icon(MdiIcons.bookOpen, size: 200, color: Colors.red),
            Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                  fixedSize: MaterialStateProperty.all(Size(200, 10))),
              child: Text('ListView'),
              onPressed: () => navegar(context, 1),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.cyan),
                  fixedSize: MaterialStateProperty.all(Size(200, 10))),
              child: Text('Tabs'),
              onPressed: () => navegar(context, 2),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  fixedSize: MaterialStateProperty.all(Size(200, 10))),
              child: Text('Páginas'),
              onPressed: () => navegar(context, 3),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  fixedSize: MaterialStateProperty.all(Size(200, 10))),
              onPressed: () => navegar(context, 4),
              child: Text('Imágenes'),
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green.shade100,
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
