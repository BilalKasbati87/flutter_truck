import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class SpecsContainer extends StatelessWidget {
  const SpecsContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SpecsContainerItems(
          text: 'fuel',
          image: 'assets/icons/fuel.svg',
          press: () {},
        ),
        SpecsContainerItems(
          text: 'lub',
          image: 'assets/icons/lube.svg',
          press: () {},
        ),
        SpecsContainerItems(
          text: 'battery',
          image: 'assets/icons/battery.svg',
          press: () {},
        ),
        SpecsContainerItems(
          text: 'energy',
          image: 'assets/icons/energy.svg',
          press: () {},
        ),
        SpecsContainerItems(
          text: 'temp',
          image: 'assets/icons/temp.svg',
          press: () {},
        ),
        SpecsContainerItems(
          text: 'charge',
          image: 'assets/icons/charge.svg',
          press: () {},
        ),
      ],
    );
  }
}

class SpecsContainerItems extends StatelessWidget {
  const SpecsContainerItems({
    Key key,
    this.text,
    this.image,
    this.press,
  }) : super(key: key);

  final String text, image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding, left: 10, right: 10),
      child: GestureDetector(
        onTap: press,
        child: Container(
          height: 161,
          width: 88,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Color(0XFF000000).withOpacity(.10),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: kDefaultPadding / 1.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(image),
                Spacer(),
                Text(
                  text.toUpperCase(),
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
