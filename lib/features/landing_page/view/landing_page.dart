import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boiler_plate/features/bottom_navigation_bar/view/bottom_navigation_screen.dart';
import 'package:riverpod_boiler_plate/features/landing_page/controller/landing_page_controller.dart';

const List<Widget> bottomNavScreen = <Widget>[
  Text('Home'),
  Text('Category'),
  Text('Search'),
  Text('Favourite'),
  Text('Cart'),
];

class LandingPage extends ConsumerStatefulWidget {
  const LandingPage({super.key});

  @override
  ConsumerState createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(landingPageControllerProvider);

    return Scaffold(
      body: Center(
        child: bottomNavScreen.elementAt(controller.tabIndex),
      ),
      bottomNavigationBar: BottomNavigationScreen(
        tabIndex: controller.tabIndex,
        onTabChange: (index) {
          ref.read(landingPageControllerProvider.notifier).onChangeTabIndex(index);
        },
      ),
    );
  }
}
