import 'package:flutter/material.dart';
import 'package:sample_application/screens/screen.dart';
import './model/teacher.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Teacher(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'sample application',
        theme: ThemeData(
          backgroundColor: Colors.white,
          accentColor: Colors.black,
        ),
        home: VerifyScreen(),
      ),
    );
  }
}
