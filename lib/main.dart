import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_app/firebase_options.dart';
import 'package:security_app/splash/Sscreen.dart';
import 'package:security_application/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(260,650),
      minTextAdapt: true,
      splitScreenMode: true,
       builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          debugShowMaterialGrid: false,
          home: child,
        );
      },
      child: const Splash()
      // const HomePage(title: 'First Method'),
    );
  }
}
