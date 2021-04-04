import 'PRMUserModel.dart';
import 'PRMThemeModel.dart';

class PRMProfile {
  PRMThemeModel theme; //当前路由主题色
  PRMUserModel user; //缓存的用户信息

  PRMProfile({this.theme, this.user});
}
