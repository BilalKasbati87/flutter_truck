import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_truck/constants.dart';
import 'package:flutter_truck/second_page/components/specs_container.dart';

import 'big_image.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BigImage(),
          SizedBox(height: kDefaultPadding*2),
          SpecsContainer(),
        ],
      ),
    );
  }
}

