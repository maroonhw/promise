import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:promise/model/PRMProfile.dart';
import 'package:promise/model/PRMThemeModel.dart';
import 'package:promise/model/PRMUserModel.dart';

/*
GlobalConfigration -> profile->theme\user
*/
class PRMGlobalConfigration {
  // static SharedPreferences _prefs;
  static PRMProfile profile = PRMProfile();
  //网络缓存对象
  // static NetCache netCache = NetCache();

  // 可选的主题列表
  // static List<MaterialColor> get themes => _themes;

  // 是否为release版
  // static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  //初始化全局信息，会在APP启动时执行
  static Future init() async {
    _initPackageInfo();
    _configDeviceInfo();
    // profile.user = SCAUserModel();
    // profile.theme = SCAThemeModel();
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // //读取用户信息
    // var _profileUserInfo = prefs.getString("userInfoKey");
    // if (_profileUserInfo != null) {
    //   try {
    //     Map<String, dynamic> profileMap = convert.jsonDecode(_profileUserInfo);
    //     profile.user = SCAUserModel.userModelFromJson(profileMap);
    //   } catch (e) {}
    // }

    // //读取主题信息
    // var _themeColorIndex = prefs.getInt("themeColorKey");
    // if (_themeColorIndex != null) {
    //   try {
    //     profile.theme.themeColor = _themes[_themeColorIndex];
    //   } catch (e) {}
    // }
    // SCANetworkManager.createInstance()
    //     .interceptors
    //     .add(CookieManager(await SCACookieManager.cookieJar));
    // 如果没有缓存策略，设置默认缓存策略
    // profile.cache = profile.cache ?? CacheConfig()
    //   ..enable = true
    //   ..maxAge = 3600
    //   ..maxCount = 100;

    //初始化网络请求相关配置
    // Git.init();
  }

  static _initPackageInfo() async {
    // PackageInfo packageInfo = await PackageInfo.fromPlatform();

    // String appName = packageInfo.appName;
    // String packageName = packageInfo.packageName;
    // SCADeviceInfo.appVersion = packageInfo.version;
    // String buildNumber = packageInfo.buildNumber;
  }

  static _configDeviceInfo() async {
    String platform = "";
    String osVersion = "";
    // DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    // if (Platform.isIOS) {
    //   platform = "iOS";
    //   IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    //   osVersion = iosInfo.systemVersion;
    // } else {
    //   platform = "Android";
    //   AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    //   osVersion = androidInfo.model;
    // }
    // SCADeviceInfo.osVersion = osVersion;
    // SCADeviceInfo.os = platform;
  }

  //持久化Profile信息
  static saveUserInfo() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // Map userMap = SCAUserModel.userModelToJson(profile.user);
    // String userInfoJsonString = convert.jsonEncode(userMap);
    // prefs.setString("userInfoKey", userInfoJsonString);
  }

  static saveThemeInfo() async {
    // int index = SCAGlobal.themes.indexOf(profile.theme.themeColor);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setInt("themeColorKey", index);
  }

  static cleanProfile() async {
    // SharedPreferences _prefs = await SharedPreferences.getInstance();
    // _prefs.clear();
  }
}
