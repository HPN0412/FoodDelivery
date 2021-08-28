import 'package:flutter/material.dart';
import 'package:gomarket/signin&signup_page/singin_widget.dart';
import 'package:gomarket/model/modeltext/mytext.dart';
import 'package:gomarket/model/modelcolors/mycolor.dart';

class Walktrough extends StatefulWidget {
  Walktrough({Key? key}) : super(key: key);

  @override
  _WalktroughState createState() => _WalktroughState();
}

class _WalktroughState extends State<Walktrough> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  final int _totalPage = 4;

  List<Widget> barpageview() {
    List<Widget> list = [];
    for (int i = 0; i < _totalPage; i++) {
      list.add(i == _currentPage ? _viewchoiced(true) : _viewchoiced(false));
    }
    return list;
  }

  Widget _viewchoiced(bool _choiced) {
    return Container(
      margin: EdgeInsets.only(
        left: 6,
      ),
      height: 9,
      width: _choiced == true ? 33 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: _choiced == true
            ? MyColor.colorselectedstep
            : MyColor.colorunselectedstep,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                color: MyColor.backgroundwalktrough,
                height: MediaQuery.of(context).size.height,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: (MediaQuery.of(context).size.height / 5) * 4,
                          child: PageView(
                              controller: _pageController,
                              onPageChanged: (int page) {
                                setState(() {
                                  _currentPage = page;
                                });
                              },
                              children: <Widget>[
                                pageWalktrough(
                                    'Browse & Order All Products \nat Any Time',
                                    30,
                                    'images/walktrough1.png',
                                    20),
                                pageWalktrough(
                                    'You Package in \nOur Safe Hands',
                                    40,
                                    'images/walktrough2.png',
                                    20),
                                pageWalktrough('Committed Delivery on Time', 35,
                                    'images/wt3.png', 40),
                                // pageWalktrough('7/24 \nFastest & Safest Delivery', 30, 'images/walktrough4.png' , 20),

                                Column(children: [
                                  Container(
                                      alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(top: 30),
                                      child: MyFormText(
                                        '7/24 \nFastest & Safest Delivery',
                                        28,
                                        FontWeight.bold,
                                        Colors.black,
                                        TextAlign.center,
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsetsDirectional.only(top: 20),
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          (MediaQuery.of(context).size.height /
                                                  7) *
                                              4,
                                      child: Stack(
                                          fit: StackFit.expand,
                                          children: [
                                            Image.asset(
                                              'images/walktrough4.png',
                                              fit: BoxFit.cover,
                                            ),
                                            Positioned(
                                              child: Image.asset(
                                                'images/lg4.png',
                                              ),
                                              bottom: (MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      10) *
                                                  2,
                                              left: (MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      10) *
                                                  2.5,
                                            )
                                          ]))
                                ])
                              ])),
                      Container(
                        margin: EdgeInsets.only(bottom: 20, left: 35),
                        child: Row(
                          children: barpageview(),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 2),
                          child: Column(children: [
                            Row(children: [
                              Container(
                                  width: 62,
                                  height: 40,
                                  margin: EdgeInsets.only(left: 25, bottom: 35),
                                  child: TextButton(
                                      child: MyFormText(
                                          'Skip',
                                          18,
                                          FontWeight.w300,
                                          Colors.black,
                                          TextAlign.center),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    SigninWidget()));
                                      })),
                              Container(
                                  width: 139,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFFD8700),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 170, bottom: 35),
                                  child: TextButton(
                                      child: MyFormText(
                                          'Get Started',
                                          20,
                                          FontWeight.normal,
                                          Colors.white,
                                          TextAlign.center),
                                      onPressed: () {
                                        setState(() {
                                          print(_currentPage);
                                          _pageController.nextPage(
                                              duration:
                                                  Duration(microseconds: 150),
                                              curve: Curves.easeIn);
                                        });
                                      }))
                            ])
                          ]))
                    ]))));
  }

  Widget pageWalktrough(String title, double margintitle,
      String imagewalktrough, double marginimage) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: margintitle),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'PopPins',
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: marginimage),
          width: MediaQuery.of(context).size.width,
          height: (MediaQuery.of(context).size.height / 7) * 4,
          child: Image.asset(
            imagewalktrough,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
