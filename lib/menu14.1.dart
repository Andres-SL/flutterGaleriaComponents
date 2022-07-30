// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// Pressing the PopupMenuButton on the right of this item shows
// a simple menu with one disabled item. Typically the contents
// of this "contextual menu" would reflect the app's state.
class _ContextMenuDemo extends StatelessWidget {
  const _ContextMenuDemo({
    Key? key,
    required this.showInSnackBar,
  }) : super(key: key);

  final void Function(String value) showInSnackBar;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('localizations.demoMenuAnItemWithAContextMenuButton'),
      trailing: PopupMenuButton<String>(
        padding: EdgeInsets.zero,
        onSelected: (value) => showInSnackBar(
          'localizations.demoMenuSelected(value)',
        ),
        itemBuilder: (context) => <PopupMenuItem<String>>[
          PopupMenuItem<String>(
            value: 'localizations.demoMenuContextMenuItemOne',
            child: Text(
              'localizations.demoMenuContextMenuItemOne',
            ),
          ),
          PopupMenuItem<String>(
            enabled: false,
            child: Text(
              'localizations.demoMenuADisabledMenuItem',
            ),
          ),
          PopupMenuItem<String>(
            value: 'localizations.demoMenuContextMenuItemThree',
            child: Text(
              'localizations.demoMenuContextMenuItemThree',
            ),
          ),
        ],
      ),
    );
  }
}

