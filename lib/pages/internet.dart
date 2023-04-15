import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webroute/widgets/box.dart';
final Uri internetspeed =Uri.parse('https://fast.com/');
final Uri speed = Uri.parse('https://www.speedtest.net/');

final Uri epassport = Uri.parse('https://nepalpassport.gov.np/?download_form=passport-application-form');
final Uri nationalid = Uri.parse('https://donidcr.gov.np/');
class Internet extends StatelessWidget {
  const Internet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
           Navigator.pop(context);
         }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
      
        elevation: 0,
        title: Text('Internet ',
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                GestureDetector(
                  onTap: _internetspeed,
                  child: Box(
                    image: 'images/fast.jpg',
                     name: 'Internet Speed'),
                ),
                GestureDetector(
                  onTap: _pan,
                  child: Box(
                    image: 'images/speed.jpg',
                     name: '     Speed'),
                ),
              ],
            ),
             Row(
              children: [
                GestureDetector(
                  onTap: _internetspeed,
                  child: Box(
                    image: 'images/fast.jpg',
                     name: 'Internet Speed'),
                ),
                GestureDetector(
                  onTap: _pan,
                  child: Box(
                    image: 'images/speed.jpg',
                     name: '     Speed'),
                ),
              ],
            ),
          
          ],
        ),
      )
    );
  }
}
Future<void> _internetspeed() async {
  if (!await launchUrl(internetspeed)) {
    throw Exception('Could not launch $internetspeed');
  }
}
Future<void> _pan() async {
  if (!await launchUrl(speed)) {
    throw Exception('Could not launch $speed');
  }
}


Future<void> _epassport() async {
  if (!await launchUrl(epassport)) {
    throw Exception('Could not launch $epassport');
  }
}
Future<void> _nationalid() async {
  if (!await launchUrl(nationalid)) {
    throw Exception('Could not launch $nationalid');
  }
}