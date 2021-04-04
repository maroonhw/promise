import 'package:flutter/material.dart';

class PRMLoginPage extends StatefulWidget {
  @override
  _PRMLoginPageRouteState createState() => new _PRMLoginPageRouteState();
}

class _PRMLoginPageRouteState extends State<PRMLoginPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    // _requestVersionUpdate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scarab"),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text("data"),
      backgroundColor: Colors.white,
    );
  }
}
