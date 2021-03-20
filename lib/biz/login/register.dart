import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageRouteState createState() => new _RegisterPageRouteState();
}

class _RegisterPageRouteState extends State<RegisterPage>
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