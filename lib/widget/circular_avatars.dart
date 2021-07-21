import 'package:flutter/material.dart';
import 'package:sample_application/widget/widget.dart';

class CircularAvatars extends StatelessWidget {
  const CircularAvatars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowCircular(),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatr(
              image: 'images/suit3.jpg',
            ),
            SizedBox(
              width: 12,
            ),
            CircleAvatr(
              image: 'images/suit2.jpg',
            ),
            SizedBox(
              width: 12,
            ),
            CircleAvatr(
              image: 'images/suit1.jpg',
            ),
            SizedBox(
              width: 12,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        RowCircular(),
      ],
    );
  }
}
