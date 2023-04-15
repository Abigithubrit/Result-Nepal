import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webroute/widgets/box.dart';
final Uri facebook =Uri.parse('https://www.facebook.com/');
final Uri twitter = Uri.parse('https://twitter.com/');
final Uri instagram = Uri.parse('https://www.instagram.com/');
final Uri youtube = Uri.parse('https://www.youtube.com/');

class Entertainment extends StatelessWidget {
  const Entertainment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           leading: IconButton(onPressed: () {
           Navigator.pop(context);
         }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
    
        elevation: 0,
        title: Text('Entertainment ',
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
                  onTap: _facebook,
                  child: Box(
                    image: 'images/facebook.jpg',
                     name: '   Facebook'),
                ),
                GestureDetector(
                  onTap: _twitter,
                  child: Box(
                    image: 'images/twitter.jpg',
                     name: '     Twitter'),
                ),
              ],
            ),
             Row(
              children: [
                GestureDetector(
                  onTap: _instagram,
                  child: Box(
                    image: 'images/instagram.jpg',
                     name: '   Instagran  '),
                ),
                GestureDetector(
                  onTap: _youtube,
                  child: Box(
                    image: 'images/youtube.jpg',
                     name: '      Youtube'),
                ),
              ],
            ),
          
          ],
        ),
      )
    );
  }
}
Future<void> _facebook() async {
  if (!await launchUrl(facebook)) {
    throw Exception('Could not launch $facebook');
  }
}
Future<void> _twitter() async {
  if (!await launchUrl(twitter)) {
    throw Exception('Could not launch $twitter');
  }
}
Future<void> _instagram() async {
  if (!await launchUrl(instagram)) {
    throw Exception('Could not launch $instagram');
  }
}
Future<void> _youtube() async {
  if (!await launchUrl(youtube)) {
    throw Exception('Could not launch $youtube');
  }
}

