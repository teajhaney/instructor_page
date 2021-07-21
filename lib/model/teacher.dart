import 'package:flutter/cupertino.dart';
import 'package:sample_application/model/model.dart';

class Teacher extends ChangeNotifier {
  List<Model> instructor = [
    Model(
      name: 'Tijani Yusuf',
      subject: 'Mathematics Instructor',
      location: 'Lagos, Nigeria',
      image: 'images/suit1.jpg',
      price: '\$43',
    ),
    Model(
      name: 'Lee Seulgi',
      subject: 'Korean Instructor',
      location: 'Seoul, Korea',
      image: 'images/1.jpg',
      price: '\$33',
    ),
    Model(
      name: 'Daniel Brown',
      subject: 'English Instructor',
      location: 'Vancover, BC',
      image: 'images/woolen_shirt.jpg',
      price: '\$30',
    ),
  ];

  List<String> image = [
    'https://photo-cdn2.icons8.com/AlO_uO1Q1h-2EYsx_ddoy4QZD44gxQSTzLNQlKZGKPU/rs:fit:576:864/Z3M6Ly9tb29zZTIv/YXNzZXRzL3NhdGEv/b3JpZ2luYWwvMzA5/L2U1MjcxNjU5LTM1/NmMtNGRhYi1hODQz/LWVkMWRmM2EyNjcw/MS5qcGc.jpg',
    'https://photo-cdn2.icons8.com/DfzamSt5i9wLR9cj1FQWB6my7YilBo9ufZXYc6XSNr0/rs:fit:715:1072/Z3M6Ly9tb29zZTIv/YXNzZXRzL3NhdGEv/b3JpZ2luYWwvMzE3/L2Q2ZmNiNjYxLWQ2/ODMtNDIwZC1hODkw/LTYxMTUyOWE1MDhi/YS5qcGc.jpg',
    'https://photo-cdn2.icons8.com/t4vpR6W2hcF071PZDSx8RXXzGVC2rXkg3I0dx2urvAQ/rs:fit:576:863/Z3M6Ly9tb29zZTIv/YXNzZXRzL3NhdGEv/b3JpZ2luYWwvMjky/LzVlMWJjYWU5LTdj/ZGQtNGRlZi1iY2Vl/LWNhNWRjYzQ2YmZk/NS5qcGc.jpg'
  ];
}
