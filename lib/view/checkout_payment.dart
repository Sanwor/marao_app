import 'package:flutter/material.dart';

class CheckoutPayment extends StatefulWidget {
  const CheckoutPayment({super.key});

  @override
  State<CheckoutPayment> createState() => _CheckoutPaymentState();
}

List<String> options = ['Door delivery', 'Pickup'];
List<String> option = ['Card', 'Bank Account'];

class _CheckoutPaymentState extends State<CheckoutPayment> {
  String currentOptions = options[0];
  String currentOption = option[0];
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
          'Checkout',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'SFPro'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment',
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SFPro'),
            ),
            SizedBox(height: 50),
            Text(
              'Payment method',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SFPro'),
            ),
            SizedBox(height: 20),

            //first radio
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    ListTile(
                        title: Row(
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
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Card',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SFPro'),
                            ),
                          ],
                        ),
                        leading: Radio(
                          activeColor: Color(0xffFA4A0C),
                          value: option[0],
                          groupValue: currentOptions,
                          onChanged: (value) {
                            setState(() {
                              currentOptions = value.toString();
                            });
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(thickness: .5),
                    ),
                    ListTile(
                        title: Row(
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
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Bank Account',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SFPro'),
                            ),
                          ],
                        ),
                        leading: Radio(
                          activeColor: Color(0xffFA4A0C),
                          value: option[1],
                          groupValue: currentOptions,
                          onChanged: (value) {
                            setState(() {
                              currentOptions = value.toString();
                            });
                          },
                        ))
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Delivery method.',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SFPro'),
            ),
            SizedBox(height: 20),
            //second radio
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    ListTile(
                        title: const Text(
                          'Door delivery',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SFPro'),
                        ),
                        leading: Radio(
                          activeColor: Color(0xffFA4A0C),
                          value: option[0],
                          groupValue: currentOption,
                          onChanged: (value) {
                            setState(() {
                              currentOption = value.toString();
                            });
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(thickness: .5),
                    ),
                    ListTile(
                        title: const Text(
                          'Pick up',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SFPro'),
                        ),
                        leading: Radio(
                          activeColor: Color(0xffFA4A0C),
                          value: options[1],
                          groupValue: currentOption,
                          onChanged: (value) {
                            setState(() {
                              currentOption = value.toString();
                            });
                          },
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 100),
            SizedBox(
              // width: 314,
              height: 70,
              child: ElevatedButton(
                onPressed: () {},
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
                      'Proceed to payment',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SFPro'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
