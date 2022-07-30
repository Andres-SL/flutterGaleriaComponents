
import 'package:flutter/material.dart';
import 'package:galeria_componentes/appbar.dart';
import 'package:galeria_componentes/picker.dart';
import 'package:galeria_componentes/progressindicator.dart';
import 'package:galeria_componentes/selectioncontrollers.dart';
import 'package:galeria_componentes/sliders.dart';
import 'package:galeria_componentes/snackbar.dart';
import 'package:galeria_componentes/tablas_datos.dart';
import 'package:galeria_componentes/tabs.dart';
import 'package:galeria_componentes/textfield.dart';
import 'banner.dart';
import 'barra_app_inferior3.dart';
import 'botton_activacion.dart';
import 'dialogos.dart';
import 'diver.dart';
import 'hoja_inferior.dart';
import 'lista_de_cuadricula.dart';
import 'navegacion_inferior4.1.dart';

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
                ),MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BannerDemo()),
                    );
                  },
                  child: const Text('Banner'),
                ),
                  MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BottomAppBarDemo()),
                    );
                  },
                  child: const Text('Barra de la app inferior'),
                ), 
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BottomNavigationDemo(restorationId: '', )),
                    );
                  },
                  child: const Text('Etiquetas persistentes'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BottomNavigationDemo(restorationId: '', )),
                    );
                  },
                  child: const Text('Etiqueta seleccionada'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomSheetContent()),
                    );
                  },
                  child: const Text('Hoja inferior persistente'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomSheetContent()),
                    );
                  },
                  child: const Text('Hoja modal inferior'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ToggleButtonsDemo()),
                    );
                  },
                  child: const Text('Botones Activacion'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ToggleButtonsDemo()),
                    );
                  },
                  child: const Text('Chips'),
                ),
                  MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DataTableDemo()),
                    );
                  },
                  child: const Text('Tablas demos'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DialogDemo(type: null,)),
                    );
                  },
                  child: const Text('Dialogo demo'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HorizontalDividerDemo()),
                    );
                  },
                  child: const Text('Divider'),
                  
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GridListDemo(type: null,)),
                    );
                  },
                  child: const Text('Lista Cuadricula'),
                  
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
