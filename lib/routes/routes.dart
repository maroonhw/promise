import 'package:flutter/material.dart';
import 'package:promise/biz/home/home.dart';
import 'package:promise/biz/me/me.dart';
import 'package:promise/biz/login/login.dart';
import 'package:promise/biz/login/register.dart';

class SCARoute {
  final Map<String, WidgetBuilder> routes = {
    "homepage": (context) => HomePage(),
    "login": (context) => LoginPage(),
    "mepage": (context) => MePage(),
    "RegisterPage": (context) => RegisterPage(),
  };
}
