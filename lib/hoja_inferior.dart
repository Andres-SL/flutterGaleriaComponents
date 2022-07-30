// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = GalleryLocalizations.of(context)!;
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          SizedBox(
            height: 70,
            child: Center(
              child: Text(
                localizations.demoBottomSheetHeader,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Divider(thickness: 1),
          Expanded(
            child: ListView.builder(
              itemCount: 21,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(localizations.demoBottomSheetItem(index)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _PersistentBottomSheetDemo extends StatefulWidget {
  @override
  _PersistentBottomSheetDemoState createState() =>
      _PersistentBottomSheetDemoState();
}

class _PersistentBottomSheetDemoState
    extends State<_PersistentBottomSheetDemo> {
  VoidCallback? _showBottomSheetCallback;

  @override
  void initState() {
    super.initState();
    _showBottomSheetCallback = _showPersistentBottomSheet;
  }

  void _showPersistentBottomSheet() {
    setState(() {
      // Disable the show bottom sheet button.
      _showBottomSheetCallback = null;
    });

    Scaffold.of(context)
        .showBottomSheet<void>(
          (context) {
            return _BottomSheetContent();
          },
          elevation: 25,
        )
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              // Re-enable the bottom sheet button.
              _showBottomSheetCallback = _showPersistentBottomSheet;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _showBottomSheetCallback,
        child:
            Text(GalleryLocalizations.of(context)!.demoBottomSheetButtonText),
      ),
    );
  }
}

