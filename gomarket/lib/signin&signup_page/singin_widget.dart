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
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildEmail(),
                      buildPassword(),
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

Widget buildEmail() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 70),
          child: Text(
            'Username or E-Mail',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color(0xff838383),
              fontWeight: FontWeight.w300,
              fontSize: 15,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 19, top: 10, right: 18),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Image.asset('images/user.png'),
              suffixIcon: Image.asset('images/check.png'),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildPassword() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 36),
          child: Text(
            'Password',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color(0xff838383),
              fontWeight: FontWeight.w300,
              fontSize: 15,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 19, top: 8, right: 18, bottom: 29),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
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
            ),
          ),
        ),
      ],
    ),
  );
}
