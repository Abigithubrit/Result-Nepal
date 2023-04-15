import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webroute/widgets/box.dart';
final Uri see =Uri.parse('https://see.ntc.net.np/results/grade');
final Uri neb = Uri.parse('http://www.neb.gov.np/results');

final Uri pu = Uri.parse('https://pouexam.edu.np/');
final Uri tu = Uri.parse('https://www.tuexam.edu.np/');
class SEE extends StatelessWidget {
  const SEE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(onPressed: () {
           Navigator.pop(context);
         }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Result ',
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
                  onTap: _see,
                  child: Box(
                    image: 'images/see.jpg',
                     name: '   SEE'),
                ),
                GestureDetector(
                  onTap: _neb,
                  child: Box(
                    image: 'images/neb.jpg',
                     name: '     NEB'),
                ),
              ],
            ),
             Row(
              children: [
                GestureDetector(
                  onTap: _pu,
                  child: Box(
                    image: 'images/pu.jpg',
                     name: '  PU'),
                ),
                GestureDetector(
                  onTap: _tu,
                  child: Box(
                    image: 'images/tu.jpg',
                     name: '      TU Result'),
                ),
              ],
            ),
          
          ],
        ),
      )
    );
  }
}
Future<void> _see() async {
  if (!await launchUrl(see)) {
    throw Exception('Could not launch $see');
  }
}
Future<void> _neb() async {
  if (!await launchUrl(neb)) {
    throw Exception('Could not launch $neb');
  }
}


Future<void> _pu() async {
  if (!await launchUrl(pu)) {
    throw Exception('Could not launch $pu');
  }
}
Future<void> _tu() async {
  if (!await launchUrl(tu)) {
    throw Exception('Could not launch $tu');
  }
}