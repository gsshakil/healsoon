import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsoon/core/landing_provider.dart';
import 'package:healsoon/doctor/doctor_list.dart';
import 'package:healsoon/home/home_screen.dart';
import 'package:healsoon/profile/profile_screen.dart';

class LandingScreen extends ConsumerWidget {
  LandingScreen({Key? key}) : super(key: key);

  final screens = [
    const HomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final landingNotifier = ref.watch(landingProvider);

    return WillPopScope(
      onWillPop: () async {
        return landingNotifier.implementDoubleTapExit();
      },
      child: Scaffold(
        body: IndexedStack(
          index: landingNotifier.selectedIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          currentIndex: landingNotifier.selectedIndex,
          onTap: landingNotifier.setSelectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
