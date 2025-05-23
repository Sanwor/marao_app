import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/view/bottom_nav.dart';
// import 'package:foodie/view/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Login Image
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withValues(alpha: 0.45),
                        spreadRadius: 1,
                        offset: Offset(0, 2),
                        blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      child: Image(
                        image: AssetImage('assets/brazilian-burger.png'),
                        height: 382,
                        width: 414,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 382,
                        width: 414,
                        decoration: BoxDecoration(
                          color: const Color(0xffA8201D).withValues(alpha: 0.8),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40)),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 52,
                          left: 10,
                        ),
                        child: Image(
                          image: AssetImage('assets/marao.png'),
                          height: 241,
                          width: 193,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 50, right: 50, top: 340),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/unlock.svg',
                              height: 17,
                              width: 16,
                            ),
                            SizedBox(width: 6),
                            Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Quicksand'),
                            ),
                            SizedBox(
                              width: 98,
                            ),
                            Icon(
                              Icons.person_add_alt_1_rounded,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(width: 6),
                            Text('Sign-up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Quicksand')),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),

              //email
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email address',
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),

              //password
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'Forgot passcode?',
                  style: TextStyle(
                    color: Color(0xffB52E2B),
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    fontFamily: 'Quicksand',
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: SizedBox(
                  width: 314,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => BottomNavPage(
                          initialIndex: 0,
                        ),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffB52E2B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/unlock.svg',
                          height: 17,
                          width: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Quicksand'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
