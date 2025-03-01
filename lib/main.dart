import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
 runApp(new MaterialApp(

  home: Scaffold(
    appBar: ,
backgroundColor: Colors.teal,
    body:Center(
      child: Column(
mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ClipOval(
            child: Image.asset(

              "assets/profile.jpg",
              width: 150,
              height: 150,
              fit: BoxFit.fitWidth,

            ),
          ),

          Text(
            "Parsa Kavianpour",
            style: TextStyle(
              fontFamily: 'Britnay', // نام فونت تعریف شده در pubspec.yaml
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20,),
          Text(
            "MOBILE APP DEVELOPER",
            style: TextStyle(
/*
              fontFamily: 'Britnay', // نام فونت تعریف شده در pubspec.yaml
*/
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white38,
            ),
          ),
          SizedBox(height: 40),

          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: ListTile(
              leading: Icon(Icons.phone, color: Colors.teal),
              title: Text('+98 917 400 7998'),
              onTap: () => _launchURL('tel:+989174007998'),

            ),
          ),
    SizedBox(height: 20),
    Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
      ),
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: ListTile(
              leading: Icon(Icons.email, color: Colors.teal),
              title: Align(
                alignment: Alignment.centerLeft, // چپ‌چین کردن متن
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text('Parsakavianpour@gmail.com'),
                ),
              ),
              onTap: () => _launchURL("mailto:parsakavianpour@gmail.com"),
            ),


    ),


        ],
      )
    )
 )
 )
 );
}

void _launchURL(String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    print('Could not launch $url');
  }
}