import 'package:flutter/material.dart';
import 'package:webroute/pages/forms.dart';
import 'package:webroute/pages/internet.dart';
import 'package:webroute/pages/phoneapplication.dart';
import 'package:webroute/pages/result.dart';
import 'package:webroute/widgets/apptext.dart';
import 'package:webroute/widgets/box.dart';
import 'package:webroute/pages/entertainment.dart';
import 'package:webroute/widgets/drawer.dart';
import 'package:webroute/widgets/next.dart';
class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: AppText(text: 'Result Nepal',size: 25,
        color: Colors.white,

        ),
        elevation: 0,
        actions: [IconButton(onPressed: () {
          
        }, icon: Icon(Icons.details_outlined))],
        
      ),
      drawer: MyDrawer(),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              AppText(text: 'Choose Category',
              size: 30,
              color: Colors.white,),
              SizedBox(height: 10,), 
                 Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      next(context, SEE());
                    },
                    child: Box(
                      image: 'images/result1.jpg', 
                      name: 'Result'),
                  ),
                   GestureDetector(
                    onTap: () {
                      next(context, Forms());
                    },
                     child: Box(
                      image: 'images/form1.png', 
                      name: 'Form'),
                   ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      next(context, Entertainment());
                    },
                    child: Box(
                      image: 'images/entertainment.jpg', 
                      name: 'Entertainment'),
                  ),
                   GestureDetector(
                    onTap: () {
                      next(context, Internet());
                    },
                     child: Box(
                      image: 'images/intern.jpg', 
                      name: 'Internet'),
                   ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      next(context,Phone());
                    },
                    child: Box(
                      image: 'images/call.jpg', 
                      name: 'Phone call'),
                  ),
                   GestureDetector(
                    onTap: () {
                      next(context, Internet());
                    },
                     child: Box(
                      image: 'images/intern.jpg', 
                      name: 'Internet'),
                   ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}