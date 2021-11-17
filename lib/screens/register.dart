import 'package:dental_rescue/screens/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatelessWidget {
  static const routename = "Register";
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        foregroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Adobe XD layer: 'Register' (text)

              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 26,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: // Adobe XD layer: 'Please fill out the…' (text)
                    Text(
                  'Please fill out the form below to complete the process, you will be charged \$6.99/month',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 13.429508209228516,
                    color: const Color(0xff919191),
                    height: 1.4892578111130206,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),

              // Adobe XD layer: 'Email Address' (text)
              Container(
                margin: EdgeInsets.only(left: 15, right: 20),
                child: Text(
                  'Email Address',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 16,
                    color: const Color(0xff232323),
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              // Adobe XD layer: 'Frame 1' (shape)
              Container(
                margin: EdgeInsets.only(left: 15, right: 20),
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xfff4f5f6),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "mail@gmail.com"),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              Container(
                margin: EdgeInsets.only(left: 15, right: 20),
                child: Text(
                  'Phone number',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 16,
                    color: const Color(0xff232323),
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              // Adobe XD layer: 'Frame 1' (shape)
              Container(
                margin: EdgeInsets.only(left: 15, right: 20),
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xfff4f5f6),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "124 31242 24"),
                  ),
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
//card no
              Container(
                margin: EdgeInsets.only(left: 15, right: 20),
                child: Text(
                  'Card number',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 16,
                    color: const Color(0xff232323),
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              // Adobe XD layer: 'Frame 1' (shape)
              Container(
                margin: EdgeInsets.only(left: 15, right: 20),
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xfff4f5f6),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "124 31242 24"),
                  ),
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 20),
                          child: Text(
                            'Expiration Date',
                            style: TextStyle(
                              fontFamily: 'Noto Sans',
                              fontSize: 16,
                              color: const Color(0xff232323),
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),

                        // Adobe XD layer: 'Frame 1' (shape)
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 20),
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: const Color(0xfff4f5f6),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              decoration:
                                  InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "124 31242 24"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 20),
                          child: Text(
                            'CVV number',
                            style: TextStyle(
                              fontFamily: 'Noto Sans',
                              fontSize: 16,
                              color: const Color(0xff232323),
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),

                        // Adobe XD layer: 'Frame 1' (shape)
                        Container(

                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: const Color(0xfff4f5f6),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              decoration:
                              InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "111"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 1,
                child: RaisedButton(
                  child: Text(
                    'VERIFY',
                    style: TextStyle(fontSize: 16),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xff9490D5),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamed(Get_Started.routename);
                  },
                ),
              ), //expr date
            ],
          )),
        ),
      ),
    );
  }
}
