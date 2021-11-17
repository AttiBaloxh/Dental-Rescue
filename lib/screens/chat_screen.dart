import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Chat_Screen extends StatefulWidget {
  static const routename="Chat_Screen";
  const Chat_Screen({Key? key}) : super(key: key);

  @override
  _Chat_ScreenState createState() => _Chat_ScreenState();
}
bool isMe=false;
final GlobalKey<FormState> _formKey = GlobalKey();
class _Chat_ScreenState extends State<Chat_Screen> {
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
        centerTitle: false,
        title: ListTile(
          leading:CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('images/Mask Group.png'),
          ),
          title: // Adobe XD layer: 'Dr. Ngunyen' (text)
          Text(
            'Dr. Ngunyen',
            style: TextStyle(
              fontFamily: 'Noto Sans',
              fontSize: 14,
              color: const Color(0xff212121),
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
          subtitle:// Adobe XD layer: 'Online' (text)
          Text(
            'Online',
            style: TextStyle(
              fontFamily: 'Noto Sans',
              fontSize: 10,
              color: const Color(0xff4d4d4d),
              height: 1.5,
            ),
            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),

        ),
      ),
      body: Container(

        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
                ,color: Color(0xffF0F0F5),
              ),
              padding: EdgeInsets.only(left: 10,top: 10,bottom: 10,right: 5),
              // height: MediaQuery.of(context).size.height*0.03,

              child: Text(
                'Hi Darrel, what’s going on? I’m here ready to help you',
                style: TextStyle(
                  fontFamily: 'Noto Sans',
                  fontSize: 10,
                  color: const Color(0xff232323),
                  height: 1.5,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                // Icon(Icons.phone,color: const Color(0xff7672c9),),
                Container(
margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                    ,color: Color(0xff7672C9),
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10,right: 5),
                  // height: MediaQuery.of(context).size.height*0.03,

                  child:// Adobe XD layer: 'Hi Doc, I have some…' (text)
                  Text(
                    'Hi Doc, I have some problem with my tooth',
                    style: TextStyle(
                      fontFamily: 'Noto Sans',
                      fontSize: 10,
                      color: const Color(0xffffffff),
                      height: 1.5,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),



              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                // Icon(Icons.phone,color: const Color(0xff7672c9),),
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width*0.5,
                  margin: EdgeInsets.only(right: 15),
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset('images/Rectangle 10.png')),
                ),



              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                // Icon(Icons.phone,color: const Color(0xff7672c9),),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                    ,color: Color(0xff7672C9),
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10,right: 5),
                  // height: MediaQuery.of(context).size.height*0.03,

                  child:// Adobe XD layer: 'Hi Doc, I have some…' (text)
                  Text(
                    'Hi Doc, I have some problem with my tooth',
                    style: TextStyle(
                      fontFamily: 'Noto Sans',
                      fontSize: 10,
                      color: const Color(0xffffffff),
                      height: 1.5,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),



              ],
            ),


          ],
        ),
      ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 15),
          // height:MediaQuery.of(context).size.height*0.07,

          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                width: MediaQuery.of(context).size.width*0.7,
                decoration: BoxDecoration(
                    color: Color(0xffEDEDF8),
                    borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Container(
                      height:MediaQuery.of(context).size.height*0.025,
                      width: MediaQuery.of(context).size.width*0.1,

                      child: Image.asset('images/Iconly-Light-Outline-Camera.png'),
                    ),
                    Container(
                      height:MediaQuery.of(context).size.height*0.025,
                      width: MediaQuery.of(context).size.width*0.5,
                      child:    Form(
                          key: _formKey,
                          child: Container(
                            margin: EdgeInsets.only(left: 15,right: 15),

                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Write Something here...',
                                  labelStyle:   TextStyle(
                                    fontFamily: 'Noto Sans',
                                    fontSize: 12,
                                    color: const Color(0xff666666),
                                    height: 1.5,
                                  ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if(value!.isEmpty){
                                  return "*Required";
                                }
                                return null;
                              },
                              onSaved: (value) {

                              },
                              onChanged: (value){

                              },
                              onFieldSubmitted: (value){

                              },
                            ),
                          )
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.01,),
              Container(
                height:MediaQuery.of(context).size.height*0.08,
                width: MediaQuery.of(context).size.width*0.16,
                child: Image.asset('images/Group 24.png'),
              ),
            ],
          )
      ),
    );
  }
}
