import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Custom%20Widgets/text_field.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/button.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';

class PayForSecurity extends StatefulWidget {
  const PayForSecurity({super.key});

  @override
  State<PayForSecurity> createState() => _PayForSecurityState();
}

class _PayForSecurityState extends State<PayForSecurity> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Checkout',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180.h,
                width: 290.w,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 164, 210, 247),
                    borderRadius: BorderRadius.circular(21)),
              ),
              Positioned(
                child: Container(
                  height: 170.h,
                  width: 290.w,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 113, 177, 230),
                      borderRadius: BorderRadius.circular(21)),
                ),
              ),
              Positioned(
                child: Container(
                  height: 160.h,
                  width: 290.w,
                  decoration: BoxDecoration(
                    color: Darkblue,
                    borderRadius: BorderRadius.circular(21),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.w), // Adjust padding as needed
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Elbert John',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text('. . .  . . .   . . .   . . .  123',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text('VALID THRU',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text('24/2023',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                Text('CVV',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text('. . .',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Text('Card Holder Name',
              //     style: TextStyle(
              //       color:Colors.grey,
              //       fontSize: 13.sp,
              //       fontWeight: FontWeight.bold,
              //     )),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                  height: 40.h,
                  width: 250.w,
                  child:  MyTextField(labelText: 'Holder Name')),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                  height: 40.h,
                  width: 250.w,
                  child:  MyTextField(labelText: 'Card Number')),
              SizedBox(
                height: 5.h,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 40.h,
                      width: 100.w,
                      child:  MyTextField(labelText: 'Expiry Date'),
                    ),
                    SizedBox(
                      width: 60.w,
                    ),
                    SizedBox(
                      height: 40.h,
                      width: 87.w,
                      child:  MyTextField(labelText: 'CCV'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 40.h,
                width: 250.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('    Total Price ',
                        style: TextStyle(
                          color: black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                        )),
                    const SizedBox(
                      width: 60,
                    ),
                    Text('~\$ 104.00',
                        style: TextStyle(
                          color: black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
                width: 250.w,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Save for future purchase '),
                  // Text(
                  //   isSwitched ? 'ON' : 'OFF',
                  //   style: TextStyle(
                  //     color: isSwitched ? Colors.green : Colors.red,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeTrackColor:Darkblue,
                      activeColor:white,
                    
                    ),
                  ),
                ],
              ),
              ),
              Mybutton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                  )),
                  text: 'Pay Now',
                  height: 40.h,
                  width: 250.w,
                  color: Darkblue)
            ],
          )
        ],
      ),
    );
  }
}
