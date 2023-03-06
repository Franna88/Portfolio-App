import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_web_portfolio/components.dart';
import 'package:flutter_web_portfolio/routes.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 35.0, color: Colors.black),
        ),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                  child: Image.asset('Profile_Pic.jpg'),
                ),
              ),
              TabsMobile(text: 'Home', route: '/'),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(text: 'Works', route: '/works'),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(text: 'blog', route: '/blog'),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(text: 'About', route: '/about'),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(text: 'Contact', route: '/contact'),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () async =>
                        await launchUrl(Uri.parse('https://www.google.com')),
                    icon: SvgPicture.asset(
                      'instagram.svg',
                      color: Colors.black,
                      width: 35.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () async =>
                        await launchUrl(Uri.parse('https://www.google.com')),
                    icon: SvgPicture.asset(
                      'github.svg',
                      color: Colors.black,
                      width: 35.0,
                    ),
                  ),
                  IconButton(
                      onPressed: () async =>
                          await launchUrl(Uri.parse('https://www.google.com')),
                      icon: SvgPicture.asset(
                        'twitter.svg',
                        color: Colors.black,
                        width: 35.0,
                      ))
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              //Instrodution First Section
              CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 113.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'Profile_Pic.jpg',
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
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
              SizedBox(height: 40.0),
              //Web Development Secind Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AmimatedCardWeb(
                    imagePath: '/firebase.png',
                    width: 200.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold('Web Development', 20.0),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
              Sans(
                'building state of the art apps',
                15.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              //App Development third Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  AmimatedCardWeb(
                    imagePath: '/app.png',
                    width: 200.0,
                    reverse: true,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold('App Development', 20.0),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              Sans(
                'building state of the art apps',
                15.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              //Back end development, forth section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  AmimatedCardWeb(
                    imagePath: '/firebase.png',
                    width: 200.0,
                    //reverse: true,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold('Back end Development', 20.0),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              Sans(
                'all backend work done in ine place',
                15.0,
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
