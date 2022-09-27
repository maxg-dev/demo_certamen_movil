import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'ice_cream_page.dart';
import 'omm_page.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Page'),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: Expanded(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(MdiIcons.robotLove, color: Colors.green),
              title: Text('yyyy siiii'),
              subtitle: Text('nos tomamos un heladito uwu?'),
              trailing: Icon(MdiIcons.forward),
              onTap: () => navegar(context, 1),
            ),
            Divider(thickness: 3),
            ListTile(
              leading: Icon(MdiIcons.templeBuddhist, color: Colors.pink),
              title: Text('Ommmmmmmmm'),
              subtitle: Text('hora de la meditaciónnnnn'),
              trailing: Icon(MdiIcons.forward),
              onTap: () => navegar(context, 2),
            ),
            Divider(thickness: 3)
          ],
        ),
      )),
    );
  }

  void navegar(BuildContext context, int numPage) {
    List paginas = [IceCreamPage(), OmmPage()];

    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => paginas[numPage - 1],
    );

    Navigator.push(context, route);
  }
}
