import 'package:flutter/material.dart';

class VerifiedCheckBox extends StatelessWidget {
  const VerifiedCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0xffF5F5F5),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 2,
                ),
              ]),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Color(0xffF5E7E7),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0xffF5E7E7),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 2,
                ),
              ]),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Color(0xffFF5B59),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0xffFF5B59),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 2,
                ),
              ]),
          child: Icon(
            Icons.check,
            size: 30,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
