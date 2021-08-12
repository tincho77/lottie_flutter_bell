import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

String lottie_asset = 'assets/bell.json';
bool _visible = true;
AnimationController _animationController;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _animationController = AnimationController(
          vsync: this, duration: Duration(milliseconds: 500));
    }

    return Scaffold(
        body: Container(
      child: Center(
          child: Stack(
        children: [
          Container(
              alignment: Alignment.center,
              child: Visibility(
                  visible: _visible,
                  child: Lottie.asset(lottie_asset,
                      repeat: _visible, controller: _animationController))),
        ],
      )),
    ));
  }
}
