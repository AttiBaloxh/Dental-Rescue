import 'package:dental_rescue/modals/drawer.dart';
import 'package:dental_rescue/modals/drawer_container.dart';
import 'package:dental_rescue/screens/chat_screen.dart';
import 'package:dental_rescue/screens/videocall.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Home_Screen extends StatefulWidget {
  static const routename = "Home_Screen";

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
@override
  void dispose() {
    // TODO: implement dispose
  scaffoldKey.currentState!.dispose();
  super.dispose();
  }
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
title: Text("Home", style: TextStyle(color: Colors.black),),
          elevation: 0,
          backgroundColor: Color(0xffffffff),
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(
            color:  Colors.black ,
          ),
        leading:InkWell(
            onTap: (){
              scaffoldKey.currentState!.openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SvgPicture.asset('images/Group 26.svg',color: Color(0xff7672C9),),
            )),

        actions: [
   Padding(
     padding: const EdgeInsets.only(right: 10.0),
     child: Icon(FontAwesomeIcons.fileAlt,color: Color(0xff7672C9)),
   )
        ],
        ),
        key: scaffoldKey,
drawer: AppDrawer(),
        body: Container(
          height: MediaQuery.of(context).size.height*1,
          child: Column(
            children: [

              SizedBox(height: MediaQuery.of(context).size.height*0.05,),

              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/MaskGroup.png'),
              ),


              SizedBox(height: MediaQuery.of(context).size.height*0.04,),

              // Adobe XD layer: 'Have peace of mind …' (text)
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: // Adobe XD layer: 'I am here for you' (text)
                Text(
                  'I am here for you',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 16,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                )
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              // Adobe XD layer: 'Get Access to Dr Ng…' (text)
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: // Adobe XD layer: 'What do you need he…' (text)
                Text(
                  'What do you need help with today? I am here for you. Do you have a dental emergency or have a question to ask me about your oral health? Please choose below',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 12,
                    color: const Color(0xff4d4d4d),
                    height: 1.5,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                )
              ),


              SizedBox(height: MediaQuery.of(context).size.height*0.08,),
Container(
  // margin: EdgeInsets.only(left: 10,right: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: ()=>showModalBottomSheet(context: context, builder:(context)=>buildsheet(context),isScrollControlled: true,shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15)
          )
        )),
        child: Container(
          height: 100,
          width: 100,
          child: Image.asset('images/Group74.png'),
        ),
      ),
      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
      InkWell(
        onTap: ()=>showModalBottomSheet(context: context, builder:(context)=>Second_Opinions(context),isScrollControlled: true,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(15)
            )
        )),
        child: Container(
          height: 100,
          width: 100,
          child: Image.asset('images/Group 72.png'),
        ),
      ),
      SizedBox(width: MediaQuery.of(context).size.width*0.02,),

      Container(
        height: 100,
        width: 100,
        child: Image.asset('images/Group 70.png'),
      ),
    ],
  ),
),

            ],
          ),
        ),
      ),
    );
  }
}
Widget buildsheet(BuildContext context)=>Column(
mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: MediaQuery.of(context).size.height*0.02 ,),
    Center(
      child: Container(
        height: 3,
        width: 30,
        color: Color(0xffC4C4C4),
      ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height*0.04 ,),

    // Adobe XD layer: 'Photo' (text)
    Container(
      margin: EdgeInsets.only(left: 15),
      child: Text(
        'Photo',
        style: TextStyle(
          fontFamily: 'Noto Sans',
          fontSize: 16,
          color: const Color(0xff232323),
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
    ),
    // Adobe XD layer: 'Add photos of your …' (text)



    SizedBox(height: MediaQuery.of(context).size.height*0.02 ,),

    Container(
      margin: EdgeInsets.only(left: 15),
      child: Text(
        'Add photos of your dental emergency',
        style: TextStyle(
          fontFamily: 'Noto Sans',
          fontSize: 12,
          color: const Color(0xff4d4d4d),
          height: 1.5,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
    ),
Container(
  margin: EdgeInsets.only(left: 20),
  width: MediaQuery.of(context).size.width*0.15,
  height: MediaQuery.of(context).size.height*0.15,
  decoration: new BoxDecoration(
    color: Color(0xffEDEDF8),
    shape: BoxShape.circle,
  ),
  child: Image.asset('images/Iconly-Light-Outline-Camera.png')
),

    SizedBox(height: MediaQuery.of(context).size.height*0.02 ,),
    // Adobe XD layer: 'Service' (text)
    Container(
      margin: EdgeInsets.only(left: 15),
      child: Text(
        'Service',
        style: TextStyle(
          fontFamily: 'Noto Sans',
          fontSize: 16,
          color: const Color(0xff232323),
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
    ),

    SizedBox(height: MediaQuery.of(context).size.height*0.02 ,),
    // Adobe XD layer: 'Select one of servi…' (text)
    Container(
      margin: EdgeInsets.only(left: 15),
      child: Text(
        'Select one of services below to connect with dentist',
        style: TextStyle(
          fontFamily: 'Noto Sans',
          fontSize: 12,
          color: const Color(0xff4d4d4d),
          height: 1.5,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height*0.03 ,),
Container(

 child: Row(
   mainAxisAlignment: MainAxisAlignment.center,
   children: [
     Column(
       children: [
         InkWell(
           onTap: (){
             Navigator.of(context).pushNamed(Chat_Screen.routename);
           },
           child: Container(

             width: MediaQuery.of(context).size.width*0.18,
             height: MediaQuery.of(context).size.height*0.1,
             decoration: new BoxDecoration(
               color: Color(0xffEDEDF8),
               shape: BoxShape.circle,
             ),
             child: Icon(FontAwesomeIcons.commentDots,color: Color(0xff7672C9),size: 30,),
           ),
         ),

         // Adobe XD layer: 'Message' (text)
         Text(
           'Message',
           style: TextStyle(
             fontFamily: 'Noto Sans',
             fontSize: 10,
             color: const Color(0xff7672c9),
             fontWeight: FontWeight.w500,
             height: 1.5,
           ),
           textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
           textAlign: TextAlign.left,
         )

       ],
     ),
     SizedBox(width: MediaQuery.of(context).size.width*0.07 ,),
     Column(
       children: [

         Container(

           width: MediaQuery.of(context).size.width*0.18,
           height: MediaQuery.of(context).size.height*0.1,
           decoration: new BoxDecoration(
             color: Color(0xffEDEDF8),
             shape: BoxShape.circle,
           ),
           child: Center(child: Icon(FontAwesomeIcons.phoneAlt,color: Color(
               0xff7672c9),size: 30)),
         ),

         // Adobe XD layer: 'Voice Call' (text)
         Text(
           'Voice Call',
           style: TextStyle(
             fontFamily: 'Noto Sans',
             fontSize: 10,
             color: const Color(0xff7672c9),
             fontWeight: FontWeight.w500,
             height: 1.5,
           ),
           textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
           textAlign: TextAlign.left,
         )
       ],
     ),
     SizedBox(width: MediaQuery.of(context).size.width*0.07 ,),
     InkWell(
       onTap: (){
         Navigator.of(context).pushNamed(Video_Call.routename);
       },
       child: Column(
         children: [
           Container(

             width: MediaQuery.of(context).size.width*0.18,
             height: MediaQuery.of(context).size.height*0.1,
             decoration: new BoxDecoration(
               color: Color(0xffEDEDF8),
               shape: BoxShape.circle,
             ),
             child:Icon(FontAwesomeIcons.video,size: 30,color: Color(
0xff7672c9))
           ),
// Adobe XD layer: 'Video Call' (text)
           Text(
             'Video Call',
             style: TextStyle(
               fontFamily: 'Noto Sans',
               fontSize: 10,
               color: const Color(0xff7672c9),
               fontWeight: FontWeight.w500,
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
),
    SizedBox(height: MediaQuery.of(context).size.height*0.08 ,),

  ],
);
Widget Second_Opinions(BuildContext context)=>Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: MediaQuery.of(context).size.height*0.02 ,),
    Center(
      child: Container(
        height: 3,
        width: 30,
        color: Color(0xffC4C4C4),
      ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height*0.04 ,),


    Container(
      margin: EdgeInsets.only(left: 15),
      child: Text(
        'Service',
        style: TextStyle(
          fontFamily: 'Noto Sans',
          fontSize: 16,
          color: const Color(0xff232323),
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
    ),

    SizedBox(height: MediaQuery.of(context).size.height*0.02 ,),
    // Adobe XD layer: 'Select one of servi…' (text)
    Container(
      margin: EdgeInsets.only(left: 15),
      child: Text(
        'Select one of services below to connect with dentist',
        style: TextStyle(
          fontFamily: 'Noto Sans',
          fontSize: 12,
          color: const Color(0xff4d4d4d),
          height: 1.5,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height*0.03 ,),
    Container(


      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Chat_Screen.routename);
            },
            child: Container(

              width: MediaQuery.of(context).size.width*0.2,
              height: MediaQuery.of(context).size.height*0.14,

              child: Column(

                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.18,
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: new BoxDecoration(
                      color: Color(0xffEDEDF8),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(FontAwesomeIcons.commentDots,color: Color(0xff7672C9),size: 28,),
                  ),

                  // Adobe XD layer: 'Message' (text)
                  Text(
                    'Message',
                    style: TextStyle(
                      fontFamily: 'Noto Sans',
                      fontSize: 10,
                      color: const Color(0xff7672c9),
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  )

                ],
              ),
            ),
          ),

          SizedBox(width: MediaQuery.of(context).size.width*0.02,),

          Container(

            width: MediaQuery.of(context).size.width*0.2,
            height: MediaQuery.of(context).size.height*0.14,
            child: Column(
              children: [

                Container(

                  width: MediaQuery.of(context).size.width*0.18,
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: new BoxDecoration(
                    color: Color(0xffEDEDF8),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('images/Iconly-Light-Outline-Camera.png')),

                // Adobe XD layer: 'Voice Call' (text)
                Text(
                  'Send Photo',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 10,
                    color: const Color(0xff7672c9),
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.02,),

          Container(
            width: MediaQuery.of(context).size.width*0.2,
            height: MediaQuery.of(context).size.height*0.14,

            child: Column(

              children: [

                Container(

                    width: MediaQuery.of(context).size.width*0.18,
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: new BoxDecoration(
                      color: Color(0xffEDEDF8),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('images/Group 62.png')
                ),

                Text(
                  'Document\n Opinion',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 10,
                    color: const Color(0xff7672c9),
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.02,),

          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Video_Call.routename);
            },
            child: Container(

              height: MediaQuery.of(context).size.height*0.14,
              width: MediaQuery.of(context).size.width*0.2,

              child: Column(
                children: [
                  Container(

                      width: MediaQuery.of(context).size.width*0.18,
                      height: MediaQuery.of(context).size.height*0.1,
                      decoration: new BoxDecoration(
                        color: Color(0xffEDEDF8),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('images/Iconly-Light-Outline-Video.png')
                  ),
// Adobe XD layer: 'Video Call' (text)
                  Text(
                    'Video Call',
                    style: TextStyle(
                      fontFamily: 'Noto Sans',
                      fontSize: 10,
                      color: const Color(0xff7672c9),
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height*0.08 ,),

  ],
);