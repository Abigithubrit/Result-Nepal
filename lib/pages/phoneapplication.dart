import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webroute/widgets/apptext.dart';
class Phone extends StatelessWidget {
  const Phone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
       leading: IconButton(onPressed: () {
           Navigator.pop(context);
         }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text('Phone Apps'),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple,
      body:
       SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: [
              SizedBox(height: 10,),
               Row(
                 children: [
                 GestureDetector(
                        onTap: () async{
                          final Uri launchUri =Uri(
                        scheme: 'tel',
                        path: '+9810039871'
                      );
                      if(await canLaunch(launchUri.toString())){
                        await launch(launchUri.toString());
                      }else{
                        print('Error');
                      }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width/2-20,
                          child: Column(
                            children: [
                              Image.asset('images/call.jpg'),
                              AppText(text: 'Phone Call',color: Colors.white,
                              size: 20,)
                              ],
                          ),
                        )),
                        GestureDetector(
                        onTap: () async{
                          final Uri launchUri =Uri(
                        scheme: 'sms',
                        path: '+9810039871'
                      );
                      if(await canLaunch(launchUri.toString())){
                        await launch(launchUri.toString());
                      }else{
                        print('Error');
                      }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Column(
                              children: [
                                Image.asset('images/msg.jpg'),
                          AppText(text: 'Message',color: Colors.white,size: 20,
                             ) ],
                            ),
                          ),
                        )),
                     
                    
                        
                     
                 ],
               ),
               SizedBox(height: 10,),
               Row(
                 children: [
                 GestureDetector(
                        onTap: ()async {
                 String email = 'abi.dsr123@gmail.com';
                         String subject = 'Like & Subscribe';
                         String body = 'Hit the Like Button :-) !!!';
                         String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}
                         
                          final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'abi.dsr123@.com',
    query: encodeQueryParameters(<String, String>{
      'subject': 'Example Subject & Symbols are allowed!',
    }),
  );
  launchUrl(emailLaunchUri);
               }, child:Container(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Column(
                              children: [
                                Image.asset('images/email.jpg'),
                                AppText(text: 'Email',color: Colors.white,
                                size: 20,
                                                              )
                                ],
                            ),
                          ),),
                        GestureDetector(
                        onTap: () async{
                          final Uri launchUri =Uri(
                        scheme: 'sms',
                        path: '+9810039871'
                      );
                      if(await canLaunch(launchUri.toString())){
                        await launch(launchUri.toString());
                      }else{
                        print('Error');
                      }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Column(
                              children: [
                                Image.asset('images/msg.jpg'),
                                AppText(text: 'Message',color: Colors.white,
                                size: 20,
                                                              )
                                ],
                            ),
                          ),
                        )),    
                 ],
               ),
               
             ],
           ),
         ),
       ),
    );
  }
}