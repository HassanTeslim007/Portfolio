import 'package:flutter/material.dart';

import 'landscape/home.dart';
import 'portrait/home.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? const HomePortrait()
            : const HomeLandscape();
      }),
    );
  }
}





