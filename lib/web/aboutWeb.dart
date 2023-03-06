import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
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
        children: [
          //About Me
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold('About Me', 40.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        'hello, i am Franna and I specialize in flutter development.',
                        15.0),
                    Sans(
                        'hello, i am Franna and I specialize in flutter development.',
                        15.0),
                    Sans(
                        'hello, i am Franna and I specialize in flutter development.',
                        15.0),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        tealContainer('flutter'),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer('firebase'),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer('android'),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer('IOS'),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer('Windows'),
                        SizedBox(
                          width: 7.0,
                        ),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('Profile_Pic.jpg'),
                    radius: 143,
                    backgroundColor: Colors.black,
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
          //web section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AmimatedCardWeb(
                imagePath: 'webL.png',
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold('Web Development', 30),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans('Here to build your presance online', 15.0),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          //app development
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold('App Development', 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans('Here to build your presance online', 15.0),
                  ],
                ),
              ),
              AmimatedCardWeb(
                imagePath: 'webL.png',
                height: 250.0,
                width: 250.0,
                reverse: true,
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          //Backebd Development
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AmimatedCardWeb(
                imagePath: 'web1.png',
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold('Back end Development', 30),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans('Here to build your presance online', 15.0),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
