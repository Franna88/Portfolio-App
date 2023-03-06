import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class WorkWeb extends StatefulWidget {
  const WorkWeb({super.key});

  @override
  State<WorkWeb> createState() => _WorkWebState();
}

class _WorkWebState extends State<WorkWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: DrawersWeb(),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 700.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 25.0,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'works.jpg',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: TabsWebList(),
            ),
          ];
        },
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                SansBold('Works', 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AmimatedCardWeb(
                      imagePath: 'project1.jpg',
                      height: 200.0,
                      width: 300.0,
                      reverse: true,
                    ),
                    SizedBox(
                      width: widthDevice / 3,
                      child: Column(
                        children: [
                          SansBold('Portfolio', 30.0),
                          SizedBox(
                            height: 15.0,
                          ),
                          Sans(
                              'Deployed on Android, IOS and Web. The Portfoio project was truely amazing and use Firebase as the backend',
                              15.0),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
