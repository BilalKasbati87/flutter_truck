import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class BottomBigButton extends StatelessWidget {
  const BottomBigButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Container(
        height: 74,
        width: 315,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Center(
          child: Container(
            height: 19,
            width: 19,
            child: SvgPicture.asset(
              'assets/icons/plus.svg',
            ),
          ),
        ),
      ),
    );
  }
}
