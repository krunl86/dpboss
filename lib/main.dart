import 'dart:developer';
import 'package:dpboss/constValues.dart';
import 'package:dpboss/landingPage.dart';
import 'package:dpboss/webpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        
          databaseURL: 'https://dpboss-ba6b1-default-rtdb.firebaseio.com/',
        
          
          apiKey: "AIzaSyB-enRq50v28LC-Vu6lWLhJ5ar6Bew-C0A",
          authDomain: "dpboss-ba6b1.firebaseapp.com",
           projectId: "dpboss-ba6b1",
          storageBucket: "dpboss-ba6b1.appspot.com",
          messagingSenderId: "703394916929",
         appId: "1:703394916929:web:c4f245a364077993dfb4c0",
         measurementId: "G-CTRGE7CJBR"

          ));
  //runApp(const MaterialApp(home: _WebViewExample()));
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: _router,
        theme: ThemeData(
          useMaterial3: true,
          inputDecorationTheme: inputDecoration,
        ));
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const WebViewExample();
      },
      routes: <RouteBase>[],
    ),
    GoRoute(
      path: '/admin',
      builder: (BuildContext context, GoRouterState state) {
        return const AdminPage();
      },
    ),
  ],
);
