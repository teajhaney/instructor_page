import 'package:flutter/material.dart';
import 'package:sample_application/screens/screen.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InstructorsScreen(),
          ),
        );
      },
      child: Text(label),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 20,
        ),
        primary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        side: BorderSide(color: Colors.black, width: 2),
      ),
    );
  }
}
