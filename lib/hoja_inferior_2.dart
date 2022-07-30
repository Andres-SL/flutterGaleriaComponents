// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'package:gallery/demos/material/material_demo_types.dart';

class _BottomSheetContent extends StatelessWidget {
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

class _ModalBottomSheetDemo extends StatelessWidget {
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return _BottomSheetContent();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          _showModalBottomSheet(context);
        },
        child:
            Text(GalleryLocalizations.of(context)!.demoBottomSheetButtonText),
      ),
    );
  }
}

