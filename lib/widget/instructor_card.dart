import 'package:flutter/material.dart';
import '../model/teacher.dart';
import 'package:provider/provider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InstructorCard extends StatelessWidget {
  const InstructorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          final pmodel =
              Provider.of<Teacher>(context, listen: false).instructor[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 160,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 110,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage(pmodel.image),
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  bottom: 20,
                  left: 50,
                  child: Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Color(0xffFF5B5A),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          pmodel.price,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'hour',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 10,
                  bottom: 20,
                  child: Container(
                      height: 90,
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pmodel.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Text(
                            pmodel.subject,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          Text(
                            pmodel.location,
                            style: TextStyle(
                                color: Color(0xffD7D7D7), fontSize: 20),
                          ),
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Color(0xffFF5B5A),
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          )
                        ],
                      )),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
