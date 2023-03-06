import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 35.0, color: Colors.black),
        ),
        endDrawer: DrawersMobiler(),
        body: ListView(
          children: [
            //Intro, First Section
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 110.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('Profile_Pic.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: SansBold('Hello I am', 15.0),
                      ),
                      SansBold('Franna Nortje', 40.0),
                      Sans('Flutter Developer', 20.0),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 9.0,
                        children: [
                          Icon(Icons.email),
                          Icon(Icons.call),
                          Icon(Icons.location_pin),
                        ],
                      ),
                      SizedBox(width: 40.0),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 5.0,
                        children: [
                          Sans('franna@gmail.com', 15.0),
                          Sans('0761772358', 15.0),
                          Sans('25 Combretum str', 15),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
            //About me, Second Secion

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SansBold('About Me', 35.0),
                  Sans(
                      'Hello! I am Franna Norje, I spesialize in Flutter Development',
                      15.0),
                  Sans(
                      'I strive to ensure the sounding performance with state of',
                      15.0),
                  Sans('the art securoty for Andriod & IOS', 15.0),
                  SizedBox(
                    height: 15.0,
                  ),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      tealContainer('Flutter'),
                      tealContainer('Firebase'),
                      tealContainer('Windows'),
                      tealContainer('Android'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            //Third Secions - What I do
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold('What I do', 35.0),
                AmimatedCardWeb(
                  imagePath: 'webL.png',
                  text: 'Web Development',
                  width: 300.0,
                ),
                SizedBox(
                  height: 35.0,
                ),
                AmimatedCardWeb(
                  imagePath: 'firebase.png',
                  text: 'Firebase',
                  width: 300.0,
                ),
                SizedBox(
                  height: 35.0,
                ),
                AmimatedCardWeb(
                  imagePath: 'app.png',
                  text: 'Mobiel App Development',
                  width: 300.0,
                ),
                SizedBox(height: 60.0),
                //Contact Forth Section
                ContactFormMobile(),
                SizedBox(height: 20.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}
