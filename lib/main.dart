import 'package:dental_rescue/dentist/Dentist_home.dart';
import 'package:dental_rescue/screens/ask.dart';
import 'package:dental_rescue/screens/chat_screen.dart';
import 'package:dental_rescue/screens/get_started.dart';
import 'package:dental_rescue/screens/home.dart';
import 'package:dental_rescue/screens/login.dart';
import 'package:dental_rescue/screens/otp.dart';
import 'package:dental_rescue/screens/phone_number.dart';
import 'package:dental_rescue/screens/register.dart';
import 'package:dental_rescue/screens/videocall.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Login(),
      routes: {
        'Login':(context)=>Login(),
        'Phone_number':(context)=>Phone_number(),
        'Register':(context)=>Register(),
        'OTP_Screen':(context)=>OTP_Screen(),
        'Ask_Screen':(context)=>Ask_Screen(),
        'Get_Started':(context)=>Get_Started(),
        'Home_Screen':(context)=>Home_Screen(),
        'Chat_Screen':(context)=>Chat_Screen(),
        'Video_Call':(context)=>Video_Call()
      },
    );
  }
}

