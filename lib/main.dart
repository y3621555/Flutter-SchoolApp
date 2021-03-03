import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nuu_app/screen/contact_screen.dart';
import 'package:nuu_app/screen/forger_password_screen.dart';
import 'package:nuu_app/screen/calendar_screen.dart';
import 'package:nuu_app/screen/home_screen.dart';
import 'package:nuu_app/screen/html_fee_screen.dart';
import 'package:nuu_app/screen/login_screen.dart';
import 'package:nuu_app/screen/login_splash_screen.dart';
import 'package:nuu_app/screen/logout_screen.dart';
import 'package:nuu_app/screen/map_first_screen.dart';
import 'package:nuu_app/screen/map_screen.dart';
import 'package:nuu_app/screen/map_second_screen.dart';
import 'package:nuu_app/screen/phone_screen.dart';
import 'package:nuu_app/screen/profile_screen.dart';
import 'package:nuu_app/screen/school_fee_screen.dart';
import 'package:nuu_app/screen/setting_screen.dart';
import 'package:nuu_app/screen/sign_up_screen.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'package:nuu_app/screen/tw_bank_screen.dart';

import 'demo_localizations.dart';
import 'demo_localizations_delegate.dart';


void main() {
  runApp(NuuApp());
}


class NuuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginScreen(),
        '/login': (context) => LoginScreen(),
        '/login-splash': (context) => LoginSplashScreen(),
        '/home': (context) => HomeScreen(),
        '/forget-password': (context) => ForgetPasswordScreen(),
        '/sign-up': (context) => SignUpScreen(),
        '/profile': (content) => ProfileScreen(),
        '/setting': (context) => SettingScreen(),
        '/date': (context) => CalendarScreen(),
        '/logout': (context) => LogoutScreen(),
        '/school-fee': (context) => SchoolFeeScreen(),
        '/html-fee': (context) => HtmlFeeScreen(),
        '/tw-bank': (context) => TWFeeScreen(),
        '/phone': (context) => PhoneScreen(),
        '/contact': (context) => ContactScreen(),
        '/map': (context) => MapScreen(),
        '/first-map': (context) => FirstMapScreen(),
        '/second-map': (context) => SecondMapScreen(),
      },
      onGenerateTitle: (BuildContext context) => DemoLocalizations.of(context).title,
      localizationsDelegates: [
        const DemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('zh', ''),
      ],
    );
  }
}
