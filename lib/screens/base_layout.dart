import 'package:flutter/material.dart';
import '../../configs/_colors.dart';
import '../../configs/_constants.dart';
import '../../configs/_icons.dart';
import './home/my_home_page.dart';

class BaseLayout extends StatefulWidget {
  const BaseLayout({
    super.key,
  });

  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: const SafeArea(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: MyHomePage(),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: colorBorder,
                width: 2.0,
              ),
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  iconHome,
                  height: heightBottomNavigationBarItemIconSelected,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  iconSpeak,
                  height: heightBottomNavigationBarItemIcon,
                ),
                label: 'speak',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  iconBonusChest,
                  height: heightBottomNavigationBarItemIcon,
                ),
                label: 'bonus_chest',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  iconPractice,
                  height: heightBottomNavigationBarItemIcon,
                ),
                label: 'practice',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  iconRanking,
                  height: heightBottomNavigationBarItemIcon,
                ),
                label: 'ranking',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  iconMore,
                  height: heightBottomNavigationBarItemIcon,
                ),
                label: 'more',
              ),
            ],
          ),
        ));
  }
}
