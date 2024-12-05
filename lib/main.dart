import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/main_direct/home.dart';
import 'package:flutter_application_1/pages/main_direct/log_in.dart';
import 'package:flutter_application_1/pages/main_direct/sign_in_page.dart';
import 'pages/main_direct/main_direct.dart';
import 'package:flutter_application_1/pages/main_direct/sign_in_fio_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stajor',
      //theme,
      home: Home(),  
      initialRoute: '/main_direct.dart',
      routes: {
         '/log_in.dart': (context) => LogIn(),
         '/sign_in_page.dart': (context) => SignInPage(),
         '/sign_in_fio_page': (context) => SignInFIOPage(),
         '/main_direct.dart': (context) => MainDirect(),
         '/home.dart': (context) => Home()
       },
    );
  }
}

