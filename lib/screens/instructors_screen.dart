import 'package:flutter/material.dart';
import 'package:sample_application/model/teacher.dart';
import 'package:sample_application/widget/widget.dart';
import 'package:image_stack/image_stack.dart';
import 'package:provider/provider.dart';

class InstructorsScreen extends StatelessWidget {
  const InstructorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Row(children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.chevron_left),
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  'Select Instructor',
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RowButton(
                    child: Icon(
                      Icons.filter_alt,
                      color: Colors.black,
                    ),
                  ),
                  RowButton(
                      child: Text(
                    'Sort',
                    style: TextStyle(color: Colors.black),
                  )),
                  RowButton(
                    child: Text(
                      'Instructor',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  RowButton(
                      child: Text(
                    '\$30-\$60',
                    style: TextStyle(color: Colors.black),
                  ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InstructorCard(),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      ImageStack(
                        imageList:
                            Provider.of<Teacher>(context, listen: false).image,
                        totalCount:
                            3, // If larger than images.length, will show extra empty circle
                        imageRadius: 60, // Radius of each images
                        imageCount:
                            3, // Maximum number of images to be shown in stack
                        imageBorderWidth:
                            Provider.of<Teacher>(context, listen: false)
                                .image
                                .length
                                .toDouble(),
                        imageBorderColor:
                            Colors.white, // Border width around the images
                      ),
                      Text(
                        'Trusted by 4 million people for learning\n management',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
