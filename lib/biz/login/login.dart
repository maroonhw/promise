import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageRouteState createState() => new _LoginPageRouteState();
}

class _LoginPageRouteState extends State<LoginPage>
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