import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_truck/second_page/second_page.dart';

import '../../constants.dart';

class HomeTruck extends StatelessWidget {
  const HomeTruck({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTruckWithImage(
          text: 'ford std 3.7 l',
          image: 'assets/images/ford.png',
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SecondPage();
                },
              ),
            );
          },
        ),
        HomeTruckWithImage(
          text: 'Chevrolet 4.32',
          image: 'assets/images/chevrolet.png',
          press: () {},
        ),
      ],
    );
  }
}

class HomeTruckWithImage extends StatelessWidget {
  const HomeTruckWithImage({
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
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Container(
        width: 315,
        height: 229,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                text.toUpperCase(),
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Image(image: AssetImage(image),),
            Spacer(),
            Row(
              children: [
                Spacer(),
                GestureDetector(
                  onTap: press,
                  child: Container(
                    width: 99,
                    height: 49,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(24),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        height: 9,
                        width: 36,
                        child: SvgPicture.asset(
                          'assets/icons/forward_arrow.svg',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
