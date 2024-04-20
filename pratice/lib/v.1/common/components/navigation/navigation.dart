import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../style/color/theme_color.dart';

// membuat widget bottom app bar yang dapat menavighate ke beberapa screen

class BottomAppBarNav extends StatelessWidget {
  final StatefulNavigationShell statefulNavigationShell;
  const BottomAppBarNav({Key? key, required this.statefulNavigationShell})
      : super(key: key ?? const ValueKey<String>('bottomAppBarNav'));

  @override
  Widget build(BuildContext context) {
    TextStyle label (Color color) => Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14 , color: color);
    return Scaffold(
      body: statefulNavigationShell,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            color: ColorsApp.primary, borderRadius: BorderRadius.circular(24)),
        child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: label(Colors.white) ,
            unselectedLabelStyle: label(Colors.white38),
            onTap: (index) => _navigate(context, index),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(LucideIcons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(LucideIcons.video), label: 'reels'),
              BottomNavigationBarItem(
                  icon: Icon(LucideIcons.shoppingCart), label: 'cart'),
              BottomNavigationBarItem(
                  icon: Icon(LucideIcons.user), label: 'profile')
            ]),
      ),
    );
  }

  void _navigate(BuildContext context, int page) {
    statefulNavigationShell.goBranch(page,
        initialLocation: page == statefulNavigationShell.currentIndex);
  }
}
