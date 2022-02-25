import 'dart:convert';
import 'package:masterofget/src/page_select.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:masterofget/src/page_login.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:masterofget/variables/variables.dart';
import 'package:masterofget/src/page_signup.dart';
import 'package:masterofget/src/page_signupdetails.dart';
import 'package:masterofget/src/page_maincon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      supportedLocales: const [Locale('ko')],
      locale: const Locale('ko'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      title: 'Second Chance',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              color: Color(0xffe5e5e5),
              titleTextStyle: TextStyle(
                fontFamilyFallback: ['Noto', 'Montserrat'],
              )),
          textTheme: const TextTheme(
            bodyText2: TextStyle(
                color: Colors.black,
                fontFamilyFallback: ['Noto', 'Montserrat'],
                fontSize: 14,
                fontWeight: FontWeight.w400),
          )),
      initialRoute: '/main',
      getPages: [
        GetPage(name: '/', page: () => SplashPage()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/login/signup', page: () => SignUp()),
        GetPage(name: '/login/signup/details', page: () => SignUpDetails()),
        GetPage(name: '/select', page: () => Select()),
        GetPage(name: '/main', page: () => Main())
      ],
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () => autoLogin(context));
  }

  void autoLogin(context) async {
    final storage = FlutterSecureStorage();
    Map<String, String> allStorage = await storage.readAll();
    String statusUser = '';
    if (allStorage != null) {
      allStorage.forEach((k, v) {
        if (v == 'LOGIN') statusUser = k;
      });
    } else {
      Get.offNamed('/login');
    }
    if (statusUser != '') {
      Map userInfojson = jsonDecode(statusUser);
      print(userInfojson);
      Get.offNamed('/select', arguments: userInfojson);
    } else {
      Get.offNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffe5e5e5),
      child: Center(
          child: Text(
        'Auto Login...',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w500, color: Color(0x999999)),
      )),
    );
  }
}
