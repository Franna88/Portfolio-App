import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/routes.dart';
import 'package:flutter_web_portfolio/web/landingPageWeb.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAQgHslXL6n9nyGghGCn1A4onqa6igIKDQ",
            authDomain: "franna-webapp.firebaseapp.com",
            databaseURL: "https://franna-webapp-default-rtdb.firebaseio.com",
            projectId: "franna-webapp",
            storageBucket: "franna-webapp.appspot.com",
            messagingSenderId: "550840539825",
            appId: "1:550840539825:web:17a466f23dcaf3d5562090",
            measurementId: "G-WSV7RXNZ7Q"));
  } else {
    GoogleFonts.config.allowRuntimeFetching = false;
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (frannapages) => Routes.generateRoute(frannapages),
      initialRoute: '/',
    );
  }
}
