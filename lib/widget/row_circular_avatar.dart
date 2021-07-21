import 'package:flutter/material.dart';

class RowCircular extends StatelessWidget {
  const RowCircular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatr(
          image: 'images/1.jpg',
        ),
        SizedBox(
          width: 12,
        ),
        CircleAvatr(
          image: 'images/2.jpg',
        ),
        SizedBox(
          width: 12,
        ),
        CircleAvatr(
          image: 'images/woolen_shirt.jpg',
        ),
        SizedBox(
          width: 12,
        ),
        CircleAvatr(
          image: 'images/4.jpg',
        ),
        SizedBox(
          width: 12,
        ),
      ],
    );
  }
}

class CircleAvatr extends StatelessWidget {
  const CircleAvatr({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: Colors.blue,
      backgroundImage: AssetImage(image),
    );
  }
}
