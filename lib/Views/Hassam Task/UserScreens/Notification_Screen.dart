import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Text('Notifications',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp))),
              Row(
                children: [
                  Text(
                    'You have',
                    style: TextStyle(fontSize: 10.sp, color: Colors.black38),
                  ),
                  Text(
                    ' 3 Notifications',
                    style: TextStyle(fontSize: 10.sp, color: Darkblue),
                  ),
                  Text(
                    ' today',
                    style: TextStyle(fontSize: 10.sp, color: Colors.black38),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Today',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 50.h,
                width: 350.w,
                child: Row(
                  children: [
                    Image.asset('asset/robert.png'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  'Robert',
                                  style: TextStyle(
                                    color: Darkblue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  ' accepted your job request.',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            '2h ago',
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: SizedBox(
                  width: 200,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 350.w,
                child: Row(
                  children: [
                    Image.asset('asset/robert.png'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  'Robert',
                                  style: TextStyle(
                                    color: Darkblue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  ' accepted your job request.',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            '2h ago',
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: SizedBox(
                  width: 200,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 350.w,
                child: Row(
                  children: [
                    Image.asset('asset/robert.png'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  'Robert',
                                  style: TextStyle(
                                    color: Darkblue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  ' accepted your job request.',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            '2h ago',
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: SizedBox(
                  width: 200,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'This week',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              SizedBox(
                height: 50.h,
                width: 350.w,
                child: Row(
                  children: [
                    Image.asset('asset/robert.png'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  'Robert',
                                  style: TextStyle(
                                    color: Darkblue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  ' accepted your job request.',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            '2h ago',
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: SizedBox(
                  width: 200,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 350.w,
                child: Row(
                  children: [
                    Image.asset('asset/robert.png'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                'Robert',
                                style: TextStyle(
                                  color: Darkblue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                ' accepted your job request.',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '2h ago',
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: SizedBox(
                  width: 200,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 350.w,
                child: Row(
                  children: [
                    Image.asset('asset/robert.png'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  'Robert',
                                  style: TextStyle(
                                    color: Darkblue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  ' accepted your job request.',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            '2h ago',
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
