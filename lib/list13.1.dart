// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ListDemo2 extends StatelessWidget {
  const ListDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    'final localizations = GalleryLocalizations.of(context)!';
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('localizations.demoListsTitle'),
      ),
      body: Scrollbar(
        child: ListView(
          restorationId: 'list_demo_list_view',
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            for (int index = 1; index < 21; index++)
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('$index')),
                ),
                title: Text(
                  'localizations.demoBottomSheetItem(index)',
                ),
                subtitle: Text('localizations.demoListsSecondary')
              ),
          ],
        ),
      ),
    );
  }
}

