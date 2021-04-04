import 'package:flutter/material.dart';
import 'package:promise/biz/home/PEMHomePage.dart';
import 'package:promise/biz/me/PRMMePage.dart';
import 'package:promise/biz/login/PRMLoginPage.dart';
import 'package:promise/biz/login/PRMRegisterPage.dart';

class PRMRoutes {
  final Map<String, WidgetBuilder> routes = {
    "homepage": (context) => PRMHomePage(),
    "login": (context) => PRMLoginPage(),
    "mepage": (context) => MePage(),
    "RegisterPage": (context) => RegisterPage(),
  };
}
