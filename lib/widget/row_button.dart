import 'package:flutter/material.dart';

class RowButton extends StatelessWidget {
  const RowButton({
    Key? key,
    required this.child,
    this.color,
    this.padding,
  }) : super(key: key);

  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: child,
      style: TextButton.styleFrom(
          padding: padding,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          side: BorderSide(
            width: 1,
          )),
    );
  }
}
