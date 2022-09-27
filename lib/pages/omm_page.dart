import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OmmPage extends StatelessWidget {
  // const OmmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ommmmmmmm'),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child:
                Icon(MdiIcons.templeBuddhist, color: Colors.green, size: 200)));
  }
}
