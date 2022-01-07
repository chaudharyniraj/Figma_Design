import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class NavigationbarUI extends StatefulWidget {
  const NavigationbarUI({Key? key}) : super(key: key);

  @override
  _NavigationbarUIState createState() => _NavigationbarUIState();
}

class _NavigationbarUIState extends State<NavigationbarUI> {
  int selectedIndex = 0;

  // void changeTab() {
  //   if (mounted) setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ResponsiveNavigationBar(
        selectedIndex: selectedIndex,
        onTabChange: (int index) {
          selectedIndex = index;
          // changeTab();
        },
        // showActiveButtonText: false,
        textStyle:
            const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        navigationBarButtons: const <NavigationBarButton>[
          NavigationBarButton(
            icon: Icons.home,
            // backgroundGradient: LinearGradient(
            //   colors: <Color>[Colors.orange, Colors.orangeAccent],
            // ),
          ),
          NavigationBarButton(
            icon: Icons.favorite,
            // backgroundGradient: LinearGradient(
            //   colors: <Color>[Colors.orange, Colors.orangeAccent],
            // ),
          ),
          NavigationBarButton(
            icon: Icons.book,
            // backgroundGradient: LinearGradient(
            //   colors: <Color>[Colors.orange, Colors.orangeAccent],
            // ),
          ),
          NavigationBarButton(
            icon: Icons.people,
            // backgroundGradient: LinearGradient(
            //   colors: <Color>[Colors.orange, Colors.orangeAccent],
            // ),
          )
        ],
      ),
    );
  }
}
