// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';


class BottomNavigationDemo extends StatefulWidget {
  const BottomNavigationDemo({
    Key? key,
    required this.restorationId,
  }) : super(key: key);

  final String restorationId;


  @override
  State<BottomNavigationDemo> createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo>
    with RestorationMixin {
  final RestorableInt _currentIndex = RestorableInt(0);

  @override
  String get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_currentIndex, 'bottom_navigation_tab_index');
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;


    var bottomNavigationBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: const Icon(Icons.add_comment),
        label: 'localizations.bottomNavigationCommentsTab',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.calendar_today),
        label: 'localizations.bottomNavigationCalendarTab',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.account_circle),
        label: 'localizations.bottomNavigationAccountTab',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.alarm_on),
        label:' localizations.bottomNavigationAlarmTab',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.camera_enhance),
        label: 'localizations.bottomNavigationCameraTab',
      ),
    ];

    
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('_title(context)'),
      ),
      body: Center(
        child: PageTransitionSwitcher(
          transitionBuilder: (child, animation, secondaryAnimation) {
            return FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: _NavigationDestinationView(
            // Adding [UniqueKey] to make sure the widget rebuilds when transitioning.
            key: UniqueKey(),
            item: bottomNavigationBarItems[_currentIndex.value],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: bottomNavigationBarItems,
        currentIndex: _currentIndex.value,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: textTheme.caption!.fontSize!,
        unselectedFontSize: textTheme.caption!.fontSize!,
        onTap: (index) {
          setState(() {
            _currentIndex.value = index;
          });
        },
        selectedItemColor: colorScheme.onPrimary,
        unselectedItemColor: colorScheme.onPrimary.withOpacity(0.38),
        backgroundColor: colorScheme.primary,
      ),
    );
  }
}

class _NavigationDestinationView extends StatelessWidget {
  const _NavigationDestinationView({
    Key? key,
    required this.item,
  }) : super(key: key);

  final BottomNavigationBarItem item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ExcludeSemantics(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/demos/bottom_navigation_background.png',
                  package: 'flutter_gallery_assets',
                ),
              ),
            ),
          ),
        ),
        Center(
          child: IconTheme(
            data: const IconThemeData(
              color: Colors.white,
              size: 80,
            ),
            child: Semantics(
              label: (
                item.label!
              ),
              child: item.icon,
            ),
          ),
        ),
      ],
    );
  }
}

