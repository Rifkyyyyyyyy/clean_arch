import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pratice/v.1/common/style/color/theme_color.dart';

class BottomAppBarNav extends StatelessWidget {
  final StatefulNavigationShell statefulNavigationShell;
  const BottomAppBarNav({Key? key, required this.statefulNavigationShell})
      : super(key: key ?? const ValueKey<String>('bottomAppBarNav'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: statefulNavigationShell,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorsApp.primary,
          onTap: (index) => _navigate(context, index),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(LucideIcons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(LucideIcons.video), label: 'reels'),
            BottomNavigationBarItem(
                icon: Icon(LucideIcons.shoppingCart), label: 'cart'),
            BottomNavigationBarItem(
                icon: Icon(LucideIcons.user), label: 'profile')
          ]),
    );
  }

  void _navigate(BuildContext context, int page) {
    statefulNavigationShell.goBranch(page,
        initialLocation: page == statefulNavigationShell.currentIndex);
  }
}
