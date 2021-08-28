import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gomarket/model/modeltext/mytext.dart';

class FingerprintWidget extends StatefulWidget {
  FingerprintWidget({Key? key}) : super(key: key);

  @override
  _FingerprintWidgetState createState() => _FingerprintWidgetState();
}

class _FingerprintWidgetState extends State<FingerprintWidget> {
  int _curentpage = 0;
  late PageController _pageController =
      PageController(initialPage: 0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0274BC),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 0, top: 106),
              child: Column(
                children: [
                  MyFormText(
                    'Getting Started',
                    20,
                    FontWeight.w700,
                    Color(0xffffffff),
                    TextAlign.center,
                  ),
                  MyFormText(
                    'Create an account to continued',
                    13,
                    FontWeight.w300,
                    Color(0xffffffff),
                    TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 380,
              height: 400,
              margin: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width - 380) / 2, top: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Color(0xffffffff),
              ),
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _curentpage = page;
                  });
                },
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 34, left: 20),
                          child: MyFormText(
                            'Please lift and rest your finger',
                            15,
                            FontWeight.w300,
                            Color(0xff838383),
                            TextAlign.center,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 105, top: 76.5),
                          child: Image.asset('images/finger.png'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Center(child: Image.asset('images/face.png')),
                  )
                ],
              ),
            ),
            Container(
              child: TextButton(
                child: MyFormText('Next', 17, FontWeight.w300,
                    Color(0xffffffff), TextAlign.center),
                onPressed: () {},
              ),
              margin: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width - 360) / 2, top: 55),
              width: 360,
              height: 57,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xffFD8700)),
            )
          ],
        ),
      ),
    );
  }
}
