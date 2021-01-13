import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_truck/constants.dart';

import 'bottom_big_button.dart';
import 'home_truck.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            HomeTruck(),
            BottomBigButton(),
          ],
        ),
      ),
    );
  }
}
