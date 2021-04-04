import 'PRMProfileChangeNotifier.dart';

class PRMUserModel extends PRMProfileChangeNotifier {
  String idToken;
  String displayName;
  String uid;
  String email;
  bool emailVerified;
  String phoneNumber;
  String photoURL;
  String refreshToken;
  bool isAnonymous;
// APP是否登录(如果有用户信息，则证明登录过)
  bool get login => user != null && user.idToken != null;

  PRMUserModel get user => profile.user;
  set user(PRMUserModel user) {
    if (user?.login != profile.user?.login) {
      profile.user = user;
      notifyListeners();
    }
  }

  PRMUserModel(
      {this.idToken,
      this.displayName,
      this.uid,
      this.email,
      this.emailVerified,
      this.phoneNumber,
      this.photoURL,
      this.refreshToken,
      this.isAnonymous});

  static Map<String, dynamic> userModelToJson(PRMUserModel instance) =>
      <String, dynamic>{
        'idToken': instance.idToken,
        'displayName': instance.displayName,
        'uid': instance.uid,
        'email': instance.email,
        'emailVerified': instance.emailVerified,
        'phoneNumber': instance.phoneNumber,
        'photoURL': instance.photoURL,
        'refreshToken': instance.refreshToken,
        'isAnonymous': instance.isAnonymous,
      };

  static PRMUserModel userModelFromJson(Map<String, dynamic> json) {
    return PRMUserModel(
      idToken: json['idToken'] as String,
      displayName: json['displayName'] as String,
      uid: json['uid'] as String,
      email: json['email'] as String,
      emailVerified: json['emailVerified'] as bool,
      phoneNumber: json['phoneNumber'] as String,
      photoURL: json['photoURL'] as String,
      refreshToken: json['refreshToken'] as String,
      isAnonymous: json['isAnonymous'] as bool,
    );
  }
}
