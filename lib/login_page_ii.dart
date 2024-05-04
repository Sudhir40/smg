import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Login_page_ii  extends StatefulWidget{
  @override
  State<Login_page_ii> createState()=>Login_page_ii_state();
  TextEditingController passwordcontroller = TextEditingController();
    // TODO: implement createState
}
class Login_page_ii_state extends State<Login_page_ii>{
  var passvisibal = true;
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       body:
       Stack(
         children: [
           Column(
             children: [
               Expanded(
                 child: Container(
                   color: Colors.redAccent,
                   child: Align(
                     alignment: Alignment(0,-0.4),
                       child: Text('SMG',style: TextStyle(color: Colors.white,
                   fontSize: 40),)),
                 ),
               ),
               Expanded(
                 child: Container(
                   color: Colors.white,
                 ),
               )
             ],
           ),
           Align(alignment: Alignment(0,0.5),
             child: Container(
                height: 500,
                margin: EdgeInsets.only(right: 40,left: 40),
               decoration: BoxDecoration(
                   color: Colors.white,
                 boxShadow: [
                   BoxShadow(
                     blurRadius: 10,
                     color: Colors.grey.withOpacity(0.5),
                     spreadRadius: 5,
                     offset: Offset(0,2),
                   )
                 ]
               ),
               child: Column(
                 children: [
                   SizedBox(
                     height: 10,
                   ),
                   Center(child: Text('Login',style: TextStyle(
                     fontSize:30,
                     fontWeight: FontWeight.w600
                   ),)),
                   SizedBox(
                     height: 10,
                   ),
                   Center(child: Text('Please login to your account ')),
                   SizedBox(
                     height: 20,
                   ),
                   Container(
                     margin: EdgeInsets.only(right: 10,left: 10),
                     child: TextField(
                       decoration: InputDecoration(
                         label: Text('username'),
                         prefixIcon: Icon(Icons.account_circle_rounded),
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.grey,
                           ),
                           borderRadius: BorderRadius.circular(25),
                         ),
                           focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(
                                   color: Colors.red
                               ),
                               borderRadius: BorderRadius.circular(25)
                           )
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Container(
                     margin: EdgeInsets.only(right: 10,left: 10),
                     child: TextField(
                       controller:widget.passwordcontroller,
                         obscureText: passvisibal,
                       decoration: InputDecoration(
                         label: Text('password'),
                         prefixIcon: Icon(Icons.password),
                           suffixIcon: GestureDetector(
                           onTap: (){
                           setState(() {
                         passvisibal = !passvisibal;
                           });
                            },
                            child:passvisibal ? Icon(Icons.visibility_off,
                             color: Colors.grey,) :  Icon(Icons.visibility,
                                 color: Colors.grey,)
                            ),
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.grey,
                           ),
                           borderRadius: BorderRadius.circular(25),
                         ),
                           focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(
                                   color: Colors.red
                               ),
                               borderRadius: BorderRadius.circular(25)
                           )
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       Expanded(child: SizedBox()),
                       Text('Forget password?'),
                       SizedBox(width: 20,)
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Container(
                     height: 50,
                     width:  300,
                     decoration: BoxDecoration(
                       gradient: LinearGradient(
                         begin: Alignment.centerLeft,
                         end: Alignment(0, 5),
                         colors: <Color>[
                           Color(0xffca485c),
                           Color(0xffe16b5c),
                           Color(0xfff39060),
                         ], // Gradient from https://learnui.design/tools/gradient-generator.html
                       ),
                     ),
                     child: Center(child: Text('Login',style: TextStyle(color:Colors.white,fontSize: 25),)),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Center(child: Text('Or Login using social media ')),
                   SizedBox(
                     height: 20,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                   Container(
                       height:35,
                       child: Image(image: AssetImage('assets/images/facebook.png'))),
                       SizedBox(
                        width: 20,
                       ),
                       Container(
                           height:35,
                           child: Image(image: AssetImage('assets/images/google.png'))),
                       SizedBox(
                         width: 20,
                       ),
                       Container(
                           height:35,
                           child: Image(image: AssetImage('assets/images/twitter.png'))),
                     ],
                   )
                 ],
               ),
             ),
           )
         ],
       )
    );
  }
}