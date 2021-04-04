import 'package:flutter/material.dart';
import 'PRMProfileChangeNotifier.dart';

class PRMThemeModel extends PRMProfileChangeNotifier {
  MaterialColor themeColor;

  // 获取当前主题，如果未设置主题，则默认使用蓝色主题
  PRMThemeModel get theme => profile.theme;

  // 主题改变后，通知其依赖项，新主题会立即生效
  set theme(PRMThemeModel theme) {
    profile.theme = theme;
    notifyListeners();
  }

  PRMThemeModel({this.themeColor: Colors.blue});

  static PRMThemeModel themeModelFromJson(Map<String, dynamic> json) {
    return PRMThemeModel(
      themeColor: json['themeColor'] as MaterialColor,
    );
  }

  static Map<String, dynamic> userModelToJson(PRMThemeModel instance) =>
      <String, dynamic>{
        'displayName': instance.themeColor,
      };
}
