import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tari/screens/screen_files.dart';
import 'package:tari/sprite.dart';
import 'package:provider/provider.dart';
import 'package:tari/core/core_files.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<int> anim;

  Size get s => MediaQuery.of(context).size;
  Color beige = Color(0xffefe7d6);
  double pageOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 640))
          ..addListener(() {
            setState(() {});
          });
    _controller
      ..addListener(() {
        setState(() {});
      });
    anim = StepTween(begin: 1, end: 64).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double lerp(double min, double max) =>
      lerpDouble(min, max, _controller.value);

  @override
  Widget build(BuildContext context) {
    return ListenableProvider.value(
      value: _controller,
      child: Scaffold(
        backgroundColor: beige,
        body: GestureDetector(
          onHorizontalDragUpdate: _onHorizontalDragUpdate,
          onHorizontalDragEnd: _onHorizontalDragEnd,
          child: Stack(
            children: [
              Container(
                color: Color(0xc78d1111),
              ),
              FenderText(),
              Guitar(
                anim: anim.value.toDouble(),
              ),
              Menu(),
              CustomAppBar(
                onTap:  () => _toggle(),
              ),
              BottomInfo(),
            ],
          ),
        ),
      ),
    );
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    _controller.value += details.primaryDelta / s.width;
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    if (_controller.isAnimating ||
        _controller.status == AnimationStatus.completed) return;

    _controller.fling(velocity: _controller.value < 0.5 ? -1.0 : 1.0);
  }

  void _toggle() {//ngatur fungsi icon button
    final bool isOpen = _controller.status == AnimationStatus.completed;
    _controller.fling(velocity: isOpen ? -1 : 1);
  }
}

class CustomAppBar extends StatelessWidget {
  final Function onTap;

  const CustomAppBar({Key key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Consumer<AnimationController>(
      builder: (context, ctrl, child) {
        return Positioned(
          top: s.height*0.04,
          left: s.width * ctrl.value * 0.8 + 20,
          child: child,
        );
      },
      child: Container(
        width: s.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: s.width / 3,
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(Icons.menu,
                color: Colors.white),
                onPressed: onTap,
                iconSize: 40,
              ),
            ),
            Container(
              width: s.width / 3,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 1),
              child: Text(
                "TARI KITO",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 70,
                      offset: Offset(5.0, 0.0),
                    ),
                  ],),

              ),
            ),
            Container(
              width: s.width / 3,
            ),
          ],
        ),
      ),
    );
  }
}

class FenderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    Color beige = Color(0xff3f96de);//depan
    return Consumer<AnimationController>(
      builder: (context, ctrl, child) {
        return Positioned(
          top: 0,
          left: 0 + s.width * 0.8 * ctrl.value,
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY((-pi / 2) * ctrl.value),
            origin: Offset(0, 0),
            alignment: Alignment.centerLeft,
            child: child,
          ),
        );
      },
      child: Container(
        width: s.width,
        height: s.height,
        color: beige,
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: s.height * 0.15,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "PERSEMBAHAN",
                  style: TextStyle(
                    color: Color(0xddffffff),
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 60,
                    shadows: [
                      Shadow(
                        color: Colors.yellowAccent,
                        blurRadius: 70,
                        offset: Offset(5.0, 0.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    Color beige = Color(0xff3f96de);//samping
    return Consumer<AnimationController>(
      builder: (context, ctrl, child) {
        return Positioned(
          top: -s.height * 0.05,
          left: -s.width * 0.8 * (1 - ctrl.value) - s.width * 0.2,
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(pi / 2 * (1 - ctrl.value)),
            alignment: Alignment.centerRight,
            child: child,
          ),
        );
      },
      child: Container(
        width: s.width,
        height: s.height * 1.2,
        padding: EdgeInsets.only(left: s.width * 0.2 + 30, top: 110),
        color: beige,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tari",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
                height: 1.5,
              ),
            ),
            Text(
              "Persambahan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
                height: 1.5,
              ),
            ),
            Text(
              "Bengkulu",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
                height: 1.5,
              ),
            ),
            Spacer(flex: 10),
            InkWell(
              child: Container(
                child: Text('INFO',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  height: 1.5,) ),),
              onTap:  () => push(context, IntroPage()),
        ),Spacer(flex: 1),
            InkWell(

              child: Container(
                child: Text('GERAKAN',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      height: 1.5,) ),),
              onTap:  () => push(context, Categories()),
            ),Spacer(),
            InkWell(
              child: Container(
                child: Text('ANIMASI',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      height: 1.5,) ),),
              onTap:  () => push(context, Animasi()),
            ),Spacer(),
            SizedBox(height: 250),
          ],
        ),
      ),
    );
  }
}

class Guitar extends StatelessWidget {
  final double anim;

  const Guitar({Key key, this.anim}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Consumer<AnimationController>(
      builder: (context, ctrl, child) {
        return Positioned(
          top: 0,
          left: s.width * ctrl.value+30,
          child: IgnorePointer(
            child: Container(
              width: s.width,
              height: s.height,
              color: Colors.transparent,
              child: Stack(
                children: [
                  Positioned(
                    top: s.height/2+30,
                    left: s.width / 2-50,
                    child: Container(
                      width: s.width / 4+40,
                      height: s.height / 4,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(-10, 60),
                            blurRadius: 100,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Sprite(
                    frameHeight: s.height,
                    frameWidth: 220,
                    anim: anim,
                    frame: 64,
                    img: "assets/images/1.png",
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class BottomInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Consumer<AnimationController>(
      builder: (context, ctrl, child) {
        return Positioned(
          left: s.width * ctrl.value-20,
          bottom: 20,
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY((-pi / 2) * ctrl.value),
            alignment: Alignment.centerLeft,
            child: child,
          ),
        );
      },
      child: Container(
        width: s.width * 2,
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "BENGKULU",
              style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.bold,
                fontSize: 60,
                fontStyle: FontStyle.italic,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 70,
                    offset: Offset(5, 0.0),
                  ),
                ],
              ),
            ),
        ],
        ),
      ),
    );
  }
}
