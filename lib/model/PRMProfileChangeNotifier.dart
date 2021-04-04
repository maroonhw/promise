import 'package:flutter/material.dart';
import 'PRMProfile.dart';
import 'PRMGlobalConfigration.dart';

class PRMProfileChangeNotifier with ChangeNotifier {
  PRMProfile get profile => PRMGlobalConfigration.profile;

  @override
  void notifyListeners() {
    // SCAGlobal.saveProfile(); //保存Profile变更
    super.notifyListeners(); //通知依赖的Widget更新
  }
}
