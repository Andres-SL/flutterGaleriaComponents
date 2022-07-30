// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'package:gallery/demos/material/material_demo_types.dart';

class ToggleButtonsDemo extends StatefulWidget {
  @override
  _ToggleButtonsDemoState createState() => _ToggleButtonsDemoState();
}

class _ToggleButtonsDemoState extends State<_ToggleButtonsDemo>
    with RestorationMixin {
  final isSelected = [
    RestorableBool(false),
    RestorableBool(true),
    RestorableBool(false),
  ];

  @override
  String get restorationId => 'toggle_button_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(isSelected[0], 'first_item');
    registerForRestoration(isSelected[1], 'second_item');
    registerForRestoration(isSelected[2], 'third_item');
  }

  @override
  void dispose() {
    for (final restorableBool in isSelected) {
      restorableBool.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        onPressed: (index) {
          setState(() {
            isSelected[index].value = !isSelected[index].value;
          });
        },
        isSelected: isSelected.map((element) => element.value).toList(),
        children: const [
          Icon(Icons.ac_unit),
          Icon(Icons.call),
          Icon(Icons.cake),
        ],
      ),
    );
  }
}

