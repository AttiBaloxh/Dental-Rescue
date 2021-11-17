import 'dart:convert';
import 'package:dental_rescue/screens/ask.dart';
import 'package:dental_rescue/screens/home.dart';
import 'package:dental_rescue/screens/login.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Drawer(
        child: Container(

          child: ListView(
            children: [

              Container(
              height: MediaQuery.of(context).size.height*0.27,
                color: Color(0xffADAADE),
                child: Column(
                  children: [
                    Row(
                      children: [
                       Container(

                         height: MediaQuery.of(context).size.height*0.14,
                          width: MediaQuery.of(context).size.width*0.27,
                          child: Image.asset('images/Ellipse 11.png'),
                       ),
                        Container(
                           child: Column(
                             children: [
                               // Adobe XD layer: 'Darel Steward' (text)
                               Text(
                                 'Darel Steward',
                                 style: TextStyle(
                                   fontFamily: 'Noto Sans',
                                   fontSize: 16,
                                   color: const Color(0xfff2f2f2),
                                   fontWeight: FontWeight.w600,
                                   height: 1.5,
                                 ),
                                 textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                 textAlign: TextAlign.left,
                               ),

                               // Adobe XD layer: 'Example@xyz.com' (text)
                               Text(
                                 'Example@xyz.com',
                                 style: TextStyle(
                                   fontFamily: 'Noto Sans',
                                   fontSize: 12,
                                   color: const Color(0xfff2f2f2),
                                   height: 1.5,
                                 ),
                                 textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                 textAlign: TextAlign.left,
                               )

                             ],
                           ),
                        ),
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*0.028,),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 1,
                      child: RaisedButton(
                        child: // Adobe XD layer: 'Next' (text)
                        // Adobe XD layer: 'Get Started' (text)
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontFamily: 'Noto Sans',
                            fontSize: 12,
                            color:  Color(0xff7672C9),
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: Color(0xffF2F2F2),

                        onPressed: () {

                        },
                      ),
                    ),
                  ],
                ),
              ),

              Divider(),
              Container(
                color: Color(0xffEDEDF8),
                child: ListTile(
                  leading: Image.asset('images/Iconly-Light-Outline-Home.png'),
                  title: Text("Home",style: TextStyle(color: Color(0xff7672C9))),
                  onTap: () {

                    Navigator.of(context).pushNamed(Home_Screen.routename);

                  },
                ),
              ),
              ListTile(
                leading: Image.asset('images/vuesax-linear-card.png'),
                title: Text("Subscription",style: TextStyle(color: Colors.black)),
                onTap: () {


                },
              ),
              ListTile(
                leading: Image.asset('images/vuesax-linear-shield-tick.png'),
                title: Text("Terms of Conditions",style: TextStyle(color: Colors.black)),
                onTap: () async{

                },
              ),

              ListTile(
                leading: Image.asset('images/Iconly-Light-Outline-Info-Square.png'),
                title: Text("About",style: TextStyle(color: Colors.black)),
                onTap: () async{
Navigator.of(context).pushNamed(Ask_Screen.routename);
                },
              ),


              ListTile(
                leading: Image.asset('images/Logout.png'),
                title: Text("Logout",style: TextStyle(color: Colors.black)),
                onTap: () async{
                  Navigator.of(context).pushReplacementNamed(Login.routename);
                },
              ),




            ],
          ),
        ));
  }
}
