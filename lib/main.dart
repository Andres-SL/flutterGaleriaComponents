
import 'package:flutter/material.dart';
import 'package:galeria_componentes/appbar1.dart';
import 'package:galeria_componentes/picker.dart';
import 'package:galeria_componentes/progressindicator.dart';
import 'package:galeria_componentes/selectioncontrollers.dart';
import 'package:galeria_componentes/sliders.dart';
import 'package:galeria_componentes/snackbar.dart';
import 'package:galeria_componentes/tabs.dart';
import 'package:galeria_componentes/textfield.dart';

import 'list13.1.dart';
import 'list13.dart';
import 'navigationdrawer.dart';
import 'navigationrail.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Primera ejercicio con Flutter',
    home: PrimerArchivo(),
  ));
}

class PrimerArchivo extends StatelessWidget {
  const PrimerArchivo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeria components App'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AppBarDemo()),
                    );
                  },
                  child: const Text('AppBar'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AppBarDemo()),
                    );
                  },
                  child: const Text('Banner'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ListDemo1()),
                    );
                  },
                  child: const Text('List One'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ListDemo2()),
                    );
                  },
                  child: const Text('List One'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ListDemo2()),
                    );
                  },
                  child: const Text('List Two'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NavDrawerDemo()),
                    );
                  },
                  child: const Text('Navigation Drawer'),
                ),MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NavRailDemo()),
                    );
                  },
                  child: const Text('Navigation Rail'),
                ),MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PickerDemo()),
                    );
                  },
                  child: const Text('Date Picker'),
                ),MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProgressIndicatorDemo()),
                    );
                  },
                  child: const Text('Progress Indicator'),
                ),MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckboxDemo()),
                    );
                  },
                  child: const Text('Checkbox'),
                ),MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sliders()),
                    );
                  },
                  child: const Text('Sliders'),
                ),MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SnackbarsDemo()),
                    );
                  },
                  child: const Text('Snackbars'),
                ),MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TabsNonScrollableDemo()),
                    );
                  },
                  child: const Text('Tabs'),
                ),MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TextFieldDemo()),
                    );
                  },
                  child: const Text('TextField'),
                ),MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TabsNonScrollableDemo()),
                    );
                  },
                  child: const Text('Tooltips'),
                ), 
              ],
            )
          ],
        ),
      ),
    );
  }
}
