import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loging_page extends StatefulWidget{
  @override
  State<Loging_page> createState() => _Loging_pageState();
}

class _Loging_pageState extends State<Loging_page> with TickerProviderStateMixin{
  //
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    // TODO: implement build
    return Scaffold(
        body:
        Container(
          child: Center(
            child: Container(
              color: Colors.transparent,
              height: 400,
              width: 300,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: CupertinoColors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            offset: Offset(0,2),
                          )
                        ]
                    ),
                    margin: EdgeInsets.only(bottom: 25),
                    child:Column(
                      children: [
                        SizedBox(height: 20,),
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          elevation: 5,
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TabBar(
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.redAccent,
                              ),
                              controller: tabController,
                              isScrollable: false,
                              labelPadding: EdgeInsets.symmetric(horizontal: 30),
                              tabs: [
                                Tab(child: Text('Login',style: TextStyle(fontSize: 10),),),
                                Tab(child: Text('Signup',style: TextStyle(fontSize: 10),),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Expanded(
                          child: TabBarView(
                            controller: tabController,
                            children: [
                              Container(
                                color: CupertinoColors.white,
                                padding: EdgeInsets.only(right: 20,left: 20),
                                child: Column(
                                  children: [
                                    TextField(
                                      decoration: InputDecoration(
                                          label: Text('user ok  name'),
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
                                    SizedBox(height: 20),
                                    TextField(
                                      decoration: InputDecoration(
                                          label: Text('Password'),
                                          prefixIcon: Icon(Icons.lock),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.red
                                              ),
                                              borderRadius: BorderRadius.circular(15)
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Expanded(child: SizedBox()),
                                        ElevatedButton(
                                            style: ButtonStyle(

                                            ),
                                            onPressed: (){
                                            },
                                            child: Text('Forget password',style: TextStyle(color: Colors.white),)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                child: Container(
                                  color: CupertinoColors.white,
                                  padding: EdgeInsets.only(right: 20,left: 20),
                                  child: Column(

                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                            label: Text('Name'),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red
                                                ),
                                                borderRadius: BorderRadius.circular(15)
                                            )
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      TextField(
                                        decoration: InputDecoration(
                                            label: Text('Email'),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red
                                                ),
                                                borderRadius: BorderRadius.circular(15)
                                            )
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      TextField(
                                        decoration: InputDecoration(
                                            label: Text('Make a password'),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red
                                                ),
                                                borderRadius: BorderRadius.circular(15)
                                            )
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      TextField(
                                        decoration: InputDecoration(
                                            label: Text('Email'),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red
                                                ),
                                                borderRadius: BorderRadius.circular(15)
                                            )
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      TextField(
                                        decoration: InputDecoration(
                                            label: Text('Make a password'),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red
                                                ),
                                                borderRadius: BorderRadius.circular(15)
                                            )
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Login with '),
                                          SizedBox(width: 20,),
                                          Icon(Icons.facebook),

                                        ],
                                      ),
                                      SizedBox(height: 30),

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    /**************************************************/


                    /*
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: CupertinoColors.systemPurple,
                         padding: EdgeInsets.only(right: 20,left: 20),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    label: Text('user name'),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.red
                                        ),
                                        borderRadius: BorderRadius.circular(15)
                                    )
                                ),
                              ),
                              SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                    label: Text('user name'),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.red
                                        ),
                                        borderRadius: BorderRadius.circular(15)
                                    )
                                ),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                  onPressed: (){},
                                  child: Text('Forget password',style: TextStyle(fontSize: 20),))
                            ],
                          ),
                        ),


                     ],
                    ),*/
                    /****************************************************************************************/

                  ),

                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(

                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),

                      child: Center(child: Text('Login ',style: TextStyle(color: Colors.white),),),
                    ),

                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}