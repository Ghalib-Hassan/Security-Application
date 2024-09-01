import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/button.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';
import 'package:security_application/Views/Hassam%20Task/UserScreens/Hired_Guard.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: 130.h,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(21),
                            bottomRight: Radius.circular(21))),
                    child: Stack(clipBehavior: Clip.none, children: [
                      Positioned(
                        top: 50,
                        bottom: -40.h,
                        left: 0,
                        right: 0,
                        child: Image.asset(
                          'asset/profile.png',
                          height: 80.h,
                        ),
                      ),
                      Positioned(
                          top: 125,
                          left: 165,
                          child: Container(
                            height: 35.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                                color: blue,
                                borderRadius: BorderRadius.circular(60)),
                            child: Center(
                              child: IconButton(
                                  onPressed: () {
                                    print('why you hit me');
                                  },
                                  icon: const Icon(
                                    Icons.edit_outlined,
                                    color: white,
                                  )),
                            ),
                          ))
                    ]),
                  ),
                ],
              )),
          SizedBox(
            height: 30.h,
          ),
          Text('Williumson R.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp)),
          Text('john@gmail.com',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10.sp)),
          SizedBox(
            height: 10.h,
          ),
          Mybutton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  textStyle: TextStyle(color: white, fontSize: 7.sp)),
              text: 'Edit profile',
              height: 30.h,
              width: 70.w,
              color: Darkblue),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 200.w,
            child: const Divider(
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.person_2_rounded,
                    color: blue,
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text(
                'Profile settings',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 68,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black38,
                  ))
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50)),
                    child: Image.asset('asset/head.png')),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text(
                'Hired Security Gaurds',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 22,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HiredSecurity()));
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black38,
                  ))
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.lock_sharp,
                    color: blue,
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text(
                'Update Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 55,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black38,
                  ))
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    color: blue,
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text(
                'Log Out',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 119,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.logout_rounded,
                    color: Colors.black38,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
