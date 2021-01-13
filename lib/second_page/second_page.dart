import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_truck/constants.dart';

import 'components/body.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: buildAppBar(context),
          body: Body(),
        ),

      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
