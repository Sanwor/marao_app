import 'package:flutter/material.dart';
import 'package:foodie/view/bottom_nav.dart';
import 'package:foodie/view/my_profile_payment.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => BottomNavPage(
                  initialIndex: 0,
                ),
              ));
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(left: 50, top: 20, right: 50),
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '  My Profile',
                style: TextStyle(
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w600,
                  fontSize: 34,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Personal details',
                      style: TextStyle(
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 100,
                  // ),
                  Expanded(
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyProfilePayment(),
                          ));
                        },
                        child: Text(
                          'change',
                          style: TextStyle(
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color(0xffFA4A0C)),
                        )),
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 197,
                  width: 315,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 5),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                height: 100,
                                width: 95,
                                child: Image.asset(
                                  'assets/toyface.jpg',
                                  height: 100,
                                  width: 91,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 1.4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Title(
                              color: Colors.black,
                              child: Text(
                                'Martha da Silva',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Opacity(
                                opacity: .5,
                                child: Text('maraoburger@gmail.com')),
                            SizedBox(
                              width: 200,
                              child: Opacity(
                                opacity: .5,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 43),
                                  child: Divider(
                                    color: Colors.black,
                                    thickness: .5,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: .5,
                              child: Text(
                                '+1 857 505-8956',
                                style: TextStyle(
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Opacity(
                                opacity: .5,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 43),
                                  child: Divider(
                                    color: Colors.black,
                                    thickness: .5,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: .5,
                              child: Text(
                                '43 Magnolia st,Malden\n02148 - perto da Ferry st',
                                style: TextStyle(
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 60,
                  width: 315,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Orders',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 60,
                  width: 315,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Pending reviews',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 60,
                  width: 315,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Edit information',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 60,
                  width: 315,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Help',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 314,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
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
                      SizedBox(width: 8),
                      Text(
                        'Update',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Quicksand'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
