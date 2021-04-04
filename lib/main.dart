import 'package:flutter/material.dart';
import 'package:leancloud_storage/leancloud.dart';
import 'package:provider/provider.dart';
import 'model/PRMGlobalConfigration.dart';
import 'model/PRMThemeModel.dart';
import 'model/PRMUserModel.dart';
import 'package:promise/biz/home/PEMHomePage.dart';
import 'package:promise/biz/login/PRMLoginPage.dart';
import 'routes/PRMRoutes.dart';

void main() {
  LeanCloud.initialize(
      'lsd35U0ivr7L0GdUSs9ePfA2-gzGzoHsz', 'ICbMovlvjMiyqWYPXIMnwk5q',
      server: 'https://lsd35u0i.lc-cn-n1-shared.com',
      queryCache: new LCQueryCache());

  /// 开启调试日志
  LCLogger.setLevel(LCLogger.DebugLevel);

  runApp(PromiseApp());
}

class PromiseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PRMThemeModel()),
        ChangeNotifierProvider.value(value: PRMUserModel()),
      ],
      child: Consumer2<PRMThemeModel, PRMUserModel>(
        builder: (BuildContext context, themeModel, userModel, Widget child) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch:
                  Provider.of<PRMThemeModel>(context).theme.themeColor,
            ),
            home: _switchRootWidget(userModel),
            routes: PRMRoutes().routes,
          );
        },
      ),
    );
  }

  Widget _switchRootWidget(PRMUserModel userModel) {
    if (userModel.login) {
      return PRMHomePage();
    } else {
      return PRMLoginPage();
    }
  }
}
