import 'package:flutter/material.dart';
import 'package:webroute/widgets/apptext.dart';
class Box extends StatelessWidget {
  final String image;
  final String name;

  const Box({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,bottom: 12,),
      child: Container(
        decoration: BoxDecoration(),
        height: 205,
        child: 
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(image,
                  height: 170,
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width/2-20,),
                ),
                SizedBox(height: 5,),
                AppText(text: name,color: Colors.white,size: 20,)
              ],
            ),
           
        ),
      
    );
  }
}