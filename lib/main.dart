import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';
import 'dashboard.dart';
import 'landing_page.dart';
import 'routes.dart';
//import 'routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank Project',
      theme: ThemeData(),
      //home: const LandingPage(),
      initialRoute: '/',
      routes: Routes.mapRoutes,
      //home: Dashboard(),
    );
  }
}
