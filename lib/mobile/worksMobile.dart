import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        endDrawer: DrawersMobiler(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 35.0,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                  'works.jpg',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                )),
              ),
            ];
          },
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  SansBold('Works', 35.0),
                  SizedBox(
                    height: 20.0,
                  ),
                  AmimatedCardWeb(
                    imagePath: 'project1.jpg',
                    fit: BoxFit.contain,
                    height: 150.0,
                    width: 300,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold("Portfolio", 20.0),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                        'Deployed on Android, IOS and Web. The Portfoio project was truely amazing and use Firebase as the backend',
                        15.0),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
