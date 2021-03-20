import 'PRMUserModel.dart';
import 'PRMThemeModel.dart';

class PRMProfile {
  PRMUserModel theme; //当前路由主题色
  PRMThemeModel user; //缓存的用户信息

  PRMProfile({this.theme, this.user});

  // Map<String, dynamic> profileToJson(SCAProfile instance) => <String, dynamic>{
  //       'theme': instance.theme,
  //       'user': instance.user.userModelToJson(instance.user),
  //     };

  // static SCAProfile profileModelFromJson(Map<String, dynamic> json) {
  //   SCAUserModel userModel = SCAUserModel.userModelFromJson(json['user']);
  //   return SCAProfile(
  //     user: userModel,
  //   );
  // }
}
