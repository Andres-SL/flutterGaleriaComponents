
import 'package:flutter/material.dart';
import 'package:galeria_componentes/appbar1.dart';

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
        title: const Text('Primera App'),
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
                  child: const Text('AppBar con Flutter'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AppBarDemo()),
                    );
                  },
                  child: const Text('Primer ejemplo con Flutter'),
                ), 
              ],
            )
          ],
        ),
      ),
    );
  }
}
