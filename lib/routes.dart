import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/Common/blog.dart';
import 'package:flutter_web_portfolio/mobile/contactMobile.dart';
import 'package:flutter_web_portfolio/mobile/landingPageMobile.dart';
import 'package:flutter_web_portfolio/mobile/worksMobile.dart';
import 'package:flutter_web_portfolio/web/aboutWeb.dart';
import 'package:flutter_web_portfolio/web/contactWeb.dart';
import 'package:flutter_web_portfolio/web/landingPageWeb.dart';
import 'package:flutter_web_portfolio/web/workWeb.dart';
import 'mobile/aboutMobile.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings frannapages) {
    switch (frannapages.name) {
      case '/':
        return MaterialPageRoute(
          settings: frannapages,
          builder: (_) => LayoutBuilder(builder: ((context, constraints) {
            if (constraints.maxWidth > 800) {
              return LandingPageWeb();
            } else
              return LandingPageMobile();
          })),
        );
      case '/contact':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(
                  builder: ((context, constraints) {
                    if (constraints.maxWidth > 800) {
                      return ContactWeb();
                    } else
                      return ContactMobile();
                  }),
                ),
            settings: frannapages);
      case '/about':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 800) {
                      return AboutWeb();
                    } else
                      return AboutMobile();
                  },
                ),
            settings: frannapages);
      case '/blog':
        return MaterialPageRoute(builder: (_) => Blog(), settings: frannapages);
      case '/works':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 800) {
                      return WorkWeb();
                    } else
                      return WorksMobile();
                  },
                ),
            settings: frannapages);

      default:
        return MaterialPageRoute(
          settings: frannapages,
          builder: (_) => LayoutBuilder(builder: ((context, constraints) {
            if (constraints.maxWidth > 800) {
              return LandingPageWeb();
            } else
              return LandingPageMobile();
          })),
        );
    }
  }
}
