import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Ask_Screen extends StatelessWidget {
  static const routename = "Ask_Screen";
  const Ask_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Dr.Nagyan",style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        foregroundColor: Colors.white,
        iconTheme: IconThemeData(
          color:  Colors.black ,
        ),
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 20),
color: Color(0xffFFFFFF),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ListTile(leading: // Adobe XD layer: 'Broken Tooth/ Denta…' (text)
            Text(
            'Broken Tooth/ Dental Trauma',
            style: TextStyle(
              fontFamily: 'Noto Sans',
              fontSize: 14,
              color: const Color(0xff8c8c8c),
              fontWeight: FontWeight.w500,
              height: 1,
            ),

            ),
                trailing: Icon(Icons.arrow_forward_ios, color: const Color(0xff8c8c8c),),),
          Container(
              margin: EdgeInsets.only(left: 12,right: 20),
              child: Divider(color: const Color(0xff707070),)),
                ListTile(leading: // Adobe XD layer: 'Broken Tooth/ Denta…' (text)
                Text(
                  'Broken Tooth/ Dental Trauma',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 14,
                    color: const Color(0xff8c8c8c),
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),

                ),
                  trailing: Icon(Icons.arrow_forward_ios, color: const Color(0xff8c8c8c),),),
                Container(
                    margin: EdgeInsets.only(left: 12,right: 20),
                    child: Divider(color: const Color(0xff8c8c8c),)),             ListTile(leading: // Adobe XD layer: 'Broken Tooth/ Denta…' (text)
                Text(
                  'Broken Tooth/ Dental Trauma',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 14,
                    color: const Color(0xff8c8c8c),
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),

                ),
                  trailing: Icon(Icons.arrow_forward_ios, color: const Color(0xff8c8c8c),),),
                Container(
                    margin: EdgeInsets.only(left: 12,right: 20),
                    child: Divider(color: const Color(0xff8c8c8c),)),             ListTile(leading: // Adobe XD layer: 'Broken Tooth/ Denta…' (text)
                Text(
                  'Broken Tooth/ Dental Trauma',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 14,
                    color: const Color(0xff8c8c8c),
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),

                ),
                  trailing: Icon(Icons.arrow_forward_ios, color: const Color(0xff8c8c8c),),),
                Container(
                    margin: EdgeInsets.only(left: 12,right: 20),
                    child: Divider(color: const Color(0xff8c8c8c),)),            ListTile(leading: // Adobe XD layer: 'Broken Tooth/ Denta…' (text)
                Text(
                  'Broken Tooth/ Dental Trauma',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    fontSize: 14,
                    color: const Color(0xff8c8c8c),
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),

                ),
                  trailing: Icon(Icons.arrow_forward_ios, color: const Color(0xff8c8c8c),),),

              ],
            )
        ),
      ),
    );
  }
}
