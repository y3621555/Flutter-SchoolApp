import 'package:flutter/material.dart';

class DemoLocalizations {
  DemoLocalizations(this.locale);

  final Locale locale;

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }


  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'enter_email': 'Enter your email',
      'enter_password': 'Enter your password',
      'forget_password': 'Forget Password',
      'sign_up': 'Sign up Now',
      'login': 'Login',
      'logout': 'Logout',
      'setting': 'Setting',
      'title': 'Welcome to NuuApp',
      'home' : 'Home',
      'profile' : 'profile',
      'calendar': 'Calendar',
      'school_fee': 'School Fee',
      'school_fee_i': 'School Fee Information',
      'tw_bank': 'TW BANK',
      'phone': 'Connection Tel',
      'contact': 'Contact us',
      'map': 'Map',
      'school_map': 'School Map',
    },
    'zh': {
      'enter_email': '輸入你的email',
      'enter_password': '輸入你的密碼',
      'forget_password': '忘記密碼',
      'sign_up': '註冊',
      'login': '登入',
      'logout': '登出',
      'setting': '設定',
      'title': '歡迎使用 NuuApp',
      'home': '首頁',
      'profile' : '個人資料',
      'calendar': '行事曆',
      'school_fee': '學雜費',
      'school_fee_i': '學雜費相關資訊',
      'tw_bank': '台銀學雜費',
      'phone': '連絡電話',
      'contact': '聯絡我們',
      'map': '地圖',
      'school_map': '校園地圖',
    },
  };
  // function to get String
  String get schoolmap{
    return _localizedValues[locale.languageCode]['school_map'];
  }

  String get map{
    return _localizedValues[locale.languageCode]['map'];
  }

  String get contact{
    return _localizedValues[locale.languageCode]['contact'];
  }

  String get phone{
    return _localizedValues[locale.languageCode]['phone'];
  }
  String get twbank{
    return _localizedValues[locale.languageCode]['tw_bank'];
  }
  String get schoolfeeInformation{
    return _localizedValues[locale.languageCode]['school_fee_i'];
  }

  String get schoolfee{
    return _localizedValues[locale.languageCode]['school_fee'];
  }

  String get calendar{
    return _localizedValues[locale.languageCode]['calendar'];
  }

  String get Eemail{
    return _localizedValues[locale.languageCode]['enter_email'];
  }
  String get Epassword{
    return _localizedValues[locale.languageCode]['enter_password'];
  }
  String get forgetpassword{
    return _localizedValues[locale.languageCode]['forget_password'];
  }

  String get setting{
    return _localizedValues[locale.languageCode]['setting'];
  }

  String get signup{
    return _localizedValues[locale.languageCode]['sign_up'];
  }

  String get login {
    return _localizedValues[locale.languageCode]['login'];
  }
  String get logout {
    return _localizedValues[locale.languageCode]['logout'];
  }
  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }
  String get home {
    return _localizedValues[locale.languageCode]['home'];
  }
  String get profile {
    return _localizedValues[locale.languageCode]['profile'];
  }
}