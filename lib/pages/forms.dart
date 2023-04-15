import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webroute/widgets/box.dart';
final Uri drivingliscense =Uri.parse('http://dlo.gandaki.gov.np/');
final Uri pan = Uri.parse('https://nepaltradeportal.gov.np/register-pan/vat');

final Uri epassport = Uri.parse('https://nepalpassport.gov.np/?download_form=passport-application-form');
final Uri nationalid = Uri.parse('https://donidcr.gov.np/');
class Forms extends StatelessWidget {
  const Forms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: IconButton(onPressed: () {
           Navigator.pop(context);
         }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
       
        elevation: 0,
        title: Text('Forms ',
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
                  onTap: _drivingliscense,
                  child: Box(
                    image: 'images/liscense.jpg',
                     name: 'Driving Liscense'),
                ),
                GestureDetector(
                  onTap: _pan,
                  child: Box(
                    image: 'images/pan.jpg',
                     name: '     PAN Card'),
                ),
              ],
            ),
             Row(
              children: [
                GestureDetector(
                  onTap: _epassport,
                  child: Box(
                    image: 'images/epassport.jpg',
                     name: 'E-Passport  '),
                ),
                GestureDetector(
                  onTap: _nationalid,
                  child: Box(
                    image: 'images/nationalid.jpg',
                     name: 'National ID Card'),
                ),
              ],
            ),
          
          ],
        ),
      )
    );
  }
}
Future<void> _drivingliscense() async {
  if (!await launchUrl(drivingliscense)) {
    throw Exception('Could not launch $drivingliscense');
  }
}
Future<void> _pan() async {
  if (!await launchUrl(pan)) {
    throw Exception('Could not launch $pan');
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