// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_element

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPAge extends StatefulWidget {
  const LandingPAge({key}) : super(key: key);

  @override
  State<LandingPAge> createState() => _LandingPAgeState();
}

class _LandingPAgeState extends State<LandingPAge> {
  _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xff213A50), const Color(0xff071930)]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Image.asset("assets/ankurprofile.jpg",
                    width: 150, height: 150)),
            SizedBox(height: 12),
            Text(
              "Ankur Kasaudhan",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                "Android & Web Developer Competitive Programmer, Java Developer, C++",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Connect With me",
              style: TextStyle(
                  color: Colors.white, fontSize: 10, letterSpacing: 1),
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      _launchURL(
                          "https://www.facebook.com/profile.php?id=100009792491357");
                    },
                    child: Image.asset("assets/facebook.png",
                        width: 22, height: 20)),
                SizedBox(width: 12),
                GestureDetector(
                    onTap: () {
                      _launchURL("https://www.instagram.com/ankur21.pvt/");
                    },
                    child: Image.asset("assets/instagram.png",
                        width: 22, height: 20)),
                SizedBox(width: 12),
                GestureDetector(
                    onTap: () {
                      _launchURL(
                          "https://www.linkedin.com/in/ankur-kasaudha-ankur/");
                    },
                    child: Image.asset("assets/linkedin.png",
                        width: 22, height: 20)),
                SizedBox(width: 12),
                GestureDetector(
                    onTap: () {
                      _launchURL("");
                    },
                    child: Image.asset("assets/twitter.png",
                        width: 22, height: 20)),
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(colors: [
                    const Color(0xffA2834D),
                    const Color(0xffBC9A5F)
                  ])),
              child: Text(
                "Dwnload My Resume",
                style: TextStyle(color: Colors.blue[900], fontSize: 12),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onDoubleTap: () {
                _launchURL("https://github.com/Ankur-Kasaudhan");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(colors: [
                      const Color(0xffA2834D),
                      const Color(0xffBC9A5F)
                    ])),
                child: Text(
                  "My GitHub Profile",
                  style: TextStyle(color: Colors.blue[900], fontSize: 12),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
