import 'package:flutter/material.dart';

class BigImage extends StatelessWidget {
  const BigImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.translate(
        offset: Offset(80, 50),
        child: Image(
          image: AssetImage('assets/images/big_ford.png'),
        ),
      ),
    );
  }
}
