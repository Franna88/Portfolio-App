import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_portfolio/components.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: DrawersWeb(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: TabsWebList(),
      ),
      body: ListView(
        children:
//Firtst Page
            [
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold('Hello I am', 15),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SansBold('Franna Nortje', 55),
                    Sans('Flutter Developer', 30),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20,
                        ),
                        Sans('franna.nortje@outlook.com', 15),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 20,
                        ),
                        Sans('+27 177 2358', 15),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 20,
                        ),
                        Sans('Jeffreys Bay', 15),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.tealAccent,
                  backgroundImage: AssetImage('Profile_Pic.jpg'),
                  child: CircleAvatar(
                    radius: 143,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('Profile_Pic.jpg'),
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('Profile_Pic.jpg'),
                      //child: Image.asset('Profile_Pic.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
//Second Page
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('web1.png', height: widthDevice / 1.9),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold('About Me', 40.0),
                      SizedBox(
                        height: 15,
                      ),
                      Sans(
                          'Hello I am Franna and I specialize in Flullter Development',
                          15),
                      Sans(
                          'I strive to ensure a standing performance with state of',
                          15),
                      Sans('the art securyt for Android, IOS', 15),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          tealContainer('Flutter'),
                          SizedBox(width: 7),
                          tealContainer('Firebase'),
                          SizedBox(width: 7),
                          tealContainer('Android'),
                          SizedBox(width: 7),
                          tealContainer('IOS'),
                          SizedBox(width: 7),
                          tealContainer('Windows'),
                        ],
                      )
                    ]),
              ],
            ),
          ),
//Third Section
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold('What I Do?', 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
//Card
                    AmimatedCardWeb(
                      imagePath: 'web1.png',
                      text: 'Web Development',
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
//Card
                    AmimatedCardWeb(
                      imagePath: 'web.jpg',
                      text: 'App Development',
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
//Card
                    AmimatedCardWeb(
                      imagePath: 'firebase.png',
                      text: 'Firebase Development',
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
//Forth Section
          SizedBox(
            height: 15.0,
          ),
          ContactForm(),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
