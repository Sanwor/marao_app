import 'package:flutter/material.dart';
import 'package:foodie/view/bottom_nav.dart';
// import 'package:foodie/view/bottom_nav.dart';

class MyProfilePayment extends StatefulWidget {
  const MyProfilePayment({super.key});

  @override
  State<MyProfilePayment> createState() => _MyProfilePaymentState();
}

class _MyProfilePaymentState extends State<MyProfilePayment> {
  String selectedOption = 'None selected';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            )),
        title: Text(
          'My profile',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'SFPro'),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Information',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SFPro'),
            ),

            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white,
                height: 113,
                width: 315,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 5, left: 10, top: 15),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/toyface.jpg',
                                height: 60,
                                width: 60,
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Marvis Ighedosa',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'SFPro'),
                          ),
                          SizedBox(height: 3),
                          Opacity(
                            opacity: .5,
                            child: Text(
                              'dosamarvis@gmail.com',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SFPro'),
                            ),
                          ),
                          SizedBox(height: 3),
                          Opacity(
                            opacity: .5,
                            child: Text(
                              'No 15 uti street off ovie palace\nroad effurun delta state',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SFPro'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [Icon(Icons.edit_outlined)],
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 50),
            //Payment Method
            Text(
              'Payment Method',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SFPro'),
            ),
            SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                height: 260,
                width: 315,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      RadioMenuButton(
                        value: 'Card',
                        groupValue: selectedOption,
                        onChanged: (selectedValue) {
                          debugPrint(selectedValue.toString());
                          setState(() => selectedOption = selectedValue!);
                        },
                        style: ButtonStyle(),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  color:
                                      const Color.fromARGB(255, 248, 138, 11),
                                  child: Icon(
                                    Icons.credit_card_outlined,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(width: 15),
                            const Text(
                              'Card',
                              style: TextStyle(
                                  fontFamily: 'SFPro',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: Opacity(
                          opacity: .5,
                          child: Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                        ),
                      ),
                      RadioMenuButton(
                        value: 'backaccount',
                        groupValue: selectedOption,
                        onChanged: (selectedValue) {
                          debugPrint(selectedValue.toString());
                          setState(() => selectedOption = selectedValue!);
                        },
                        style: ButtonStyle(),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  color: const Color(0xFFEB4796),
                                  child: Image(
                                      image:
                                          AssetImage('assets/banklogo.png'))),
                            ),
                            SizedBox(width: 15),
                            const Text('Bank Account',
                                style: TextStyle(
                                    fontFamily: 'SFPro',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: Opacity(
                          opacity: .5,
                          child: Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                        ),
                      ),
                      RadioMenuButton(
                        value: 'paypal',
                        groupValue: selectedOption,
                        onChanged: (selectedValue) {
                          setState(() => selectedOption = selectedValue!);
                        },
                        style: ButtonStyle(),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  color: Color(0xFF0038FF),
                                  child: Icon(
                                    Icons.paypal,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(width: 15),
                            const Text('Paypal',
                                style: TextStyle(
                                    fontFamily: 'SFPro',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
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
                  backgroundColor: const Color(0xffB52E2B),
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
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SFPro'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
