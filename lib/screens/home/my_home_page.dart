import 'package:flutter/material.dart';
import '../../configs/_colors.dart';
import '../../configs/_constants.dart';
import '../../configs/_icons.dart';
import './components/stage.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double calcPosition(double y) {
    double position = 24 * sin(y / 2);
    return position;
  }

  List<Widget> renderRoadmapStep() {
    List<Container> list = [];
    for (double i = 0; i < 20; i++) {
      list.add(Container(
        width: roadmapStepSize,
        height: roadmapStepSize,
        margin: EdgeInsets.only(
          top: baseMargin * 2.75,
          left: (baseMargin * calcPosition(i) <= 0)
              ? (baseMargin * calcPosition(i)).abs()
              : 0,
          right: (baseMargin * calcPosition(i) >= 0)
              ? baseMargin * calcPosition(i)
              : 0,
        ),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: colorBee,
        ),
        child: Center(
          child: ((1 == (i % 4)) && i > 4)
              ? Image.asset('lib/assets/images/icons/road_chest.jpeg')
              : const Text(''),
        ),
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        basePadding * 1.5,
        0,
        basePadding * 1.5,
        0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          // App bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                padding: const EdgeInsets.all(0),
                icon: Image.asset(iconLanguage),
                onPressed: () => (),
              ),
              Row(
                children: [
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: Image.asset(iconStreak),
                    onPressed: () => (),
                  ),
                  const Text(
                    '56',
                    style: TextStyle(
                      color: colorBee,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: Image.asset(iconFreeze),
                    onPressed: () => (),
                  ),
                  const Text(
                    '1031',
                    style: TextStyle(
                      // color: (Macaw.highlight).color,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                icon: Image.asset(iconLogo),
                onPressed: () => (),
              ),
            ],
          ),

          // Roadmap
          Container(
            margin: const EdgeInsets.only(top: baseMargin * 2),
            child: const Stage(
              title: "Lên kế hoạch cho tương lai\nđưa ra lời mời",
              subtitle: "Phần 3, cửa 6",
              backgroundColor: colorMacawUpper,
              shadowBackgroundColor: colorMacawLower,
              subtitleColor: colorMacawHighlight,
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: renderRoadmapStep(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
