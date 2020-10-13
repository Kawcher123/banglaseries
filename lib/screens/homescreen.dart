import 'package:banglaseries/home.dart';
import 'package:banglaseries/pagetransition/pagetransition.dart';
import 'package:banglaseries/screens/settings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
        Container(


          child: ListView(
            children: [

              SizedBox(height: 160,),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*.45,
                      height: 150,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              10.0),
                          boxShadow: [
                            BoxShadow(color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0
                            )
                          ]
                      ),

                      child: Center(
                        child: Text("Travel Places",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.cyan
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*.45,
                      height: 150,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              10.0),
                          boxShadow: [
                            BoxShadow(color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0
                            )
                          ]
                      ),

                      child: Center(
                        child: Text("Travel Blogs",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.cyan
                          ),
                        ),
                      ),
                    )
                  ],
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*.45,
                        height: 150,

                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                10.0),
                            boxShadow: [
                              BoxShadow(color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0
                              )
                            ]
                        ),

                        child: Center(
                          child: Text("Travel Blogs",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.cyan
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*.45,
                        height: 150,

                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                10.0),
                            boxShadow: [
                              BoxShadow(color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0
                              )
                            ]
                        ),

                        child: Center(
                          child: Text("Bengali Foods",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.cyan
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context,SlideRightRoute(page: Home(title: "",)));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            10.0),
                        boxShadow: [
                          BoxShadow(color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0
                          )
                        ]
                    ),
                    child: Center(
                      child: Text("Bangla Series List",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.cyan
                      ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),


            ],
          ),
        ),

          Positioned(
            top: 0,
            child: Stack(
              children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.cyan,
                  child: Center(child: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Text("BANGALI",
                      style: TextStyle(
                        fontFamily: "Signatra",
                        fontSize: 70,
                        color: Colors.white,
                      ),
                    ),
                  )),
                ),

                Positioned(
                  top: 30,
                  left: 2,
                  child: IconButton(
                    iconSize: 25,
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    onPressed: ()
                    {
                      Navigator.push(context,SlideRightRoute(page: Setting()));
                    },
                  ),
                )
              ],
            )
          )

      ],),
    );
  }
}
