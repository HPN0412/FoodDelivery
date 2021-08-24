import 'package:flutter/material.dart';

class SigninWidget extends StatelessWidget {
  const SigninWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xFF0274BC),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 101.5),
              width: 61,
              height: 59,
              child: Image.asset('images/signin1.png'),
            ),
            Container(
                margin: EdgeInsets.only(top: 36),
                width: 175,
                height: 28,
                child: Text(
                  'Let’s Sign You In',
                  style: TextStyle(
                      fontFamily: 'PopPins',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xFFEEEEEE)),
                )),
            Container(
                margin: EdgeInsets.only(top: 10, bottom: 55),
                width: 235,
                height: 20,
                child: Text(
                  'Welcome back, you’ve been missed!',
                  style: TextStyle(
                      fontFamily: 'PopPins',
                      fontSize: 13,
                      color: Color(0xFFEEEEEE)),
                )),
            Stack(
              children: [
                Container(
                  width: 370,
                  height: 418,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(35)),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 19, right: 18),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Image.asset('images/user.png'),
                              suffixIcon: Image.asset('images/check.png'),
                              labelText: 'Username or E-Mail',
                              labelStyle: TextStyle(
                                color: Color(0xff838383),
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                              )),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 19, right: 18, top: 36, bottom: 29),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Image.asset('images/lock.png'),
                              suffixIcon: TextButton(
                                child: Text(
                                  'Forget?',
                                  style: TextStyle(
                                      color: Color(0xff0274BC),
                                      fontFamily: 'PopPins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                onPressed: () {},
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Color(0xff838383),
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                              )),
                        ),
                      ),
                      Container(
                        width: 309,
                        height: 57,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xFFFD8700)),
                        child: TextButton(
                          child: Text(
                            'Sıgn In',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'PopPins',
                                fontSize: 17,
                                fontWeight: FontWeight.w300),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 54, top: 16),
                        margin: EdgeInsets.only(bottom: 0.2),
                        child: Row(
                          children: [
                            Text(
                              'Don’t have an account?',
                              style: TextStyle(
                                  fontFamily: 'PopPins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontFamily: 'PopPins',
                                    color: Color(0xff0274BC),
                                    fontSize: 15),
                              ),
                              onTap: () {},
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    )));
  }
}
