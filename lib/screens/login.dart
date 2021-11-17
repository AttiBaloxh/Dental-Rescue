import 'package:dental_rescue/screens/phone_number.dart';
import 'package:dental_rescue/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Login extends StatelessWidget {
  static const routename = "Login";
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        foregroundColor: Colors.white,
        iconTheme: IconThemeData(
            color:  Colors.black ,
      ),
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
      ),
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Container(

          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Adobe XD layer: 'Login' (text)

              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 26,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                  'Select your best way to enter the application',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 14,
                    color: const Color(0xff919191),
                    height: 1,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
              ),
                ),

              SizedBox(height: MediaQuery.of(context).size.height*0.06,),

              Center(child: Image.asset('images/Attachment_1630191929-1 (1) 1.png')),
              // Adobe XD layer: 'Continue with phone…' (text)

              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // Icon(Icons.phone,color: const Color(0xff7672c9),),
                  Container(

                      height: MediaQuery.of(context).size.height*0.03,
                      width:  MediaQuery.of(context).size.width*0.04,
                      child: Image.asset('images/Vector.png')),

                  SizedBox(width: MediaQuery.of(context).size.width*0.02,),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(Phone_number.routename);
                    },
                    child: Text(
                      'Continue with phone number',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        fontSize: 12,
                        color: const Color(0xff7672c9),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(FontAwesomeIcons.googlePlus,color: const Color(0xff7672c9),),
                  Container(
                      height: MediaQuery.of(context).size.height*0.03,
                      width:  MediaQuery.of(context).size.width*0.04,
                      child: Image.asset('images/Group.png')),

                  SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                  // Adobe XD layer: 'Continue With Google' (text)
                  Text(
                    'Continue With Google',
                    style: TextStyle(
                      fontFamily: 'Noto Sans',
                      fontSize: 12,
                      color: const Color(0xff7672c9),
                      fontWeight: FontWeight.w600,
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  )


                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.04,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            Text("Don’t have an account?"),
                  SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                  // Adobe XD layer: 'Continue With Google' (text)
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(Register.routename);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        fontSize: 16,
                        color: const Color(0xff7672C9),
                        fontWeight: FontWeight.w600,
                        height: 1,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  )


                ],
              )

            ],
          )
        ),
      ),
    );
  }
}
