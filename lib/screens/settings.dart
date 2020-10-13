
import 'package:flutter/material.dart';




class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Settings",
          style: TextStyle(
              color: Colors.white
          ),
        ),

      ),


      body: ListView(
        children: <Widget>[


          InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,//MediaQuery.of(context).size.width*.15,
              color: Colors.white,

              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "About Us",
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),


                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            onTap: ()
            {

            },
          ),


          Divider(height: 0,thickness: 3,),

          InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,//MediaQuery.of(context).size.width*.15,
              color: Colors.white,

              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),


                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            onTap: ()
            {

            },
          ),


          Divider(height: 0,thickness: 3,),
          InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,//MediaQuery.of(context).size.width*.15,
              color: Colors.white,

              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Faq",
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),


                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            onTap: ()
            {

            },
          ),


          Divider(height: 0,thickness: 3,),


          InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,//MediaQuery.of(context).size.width*.15,
              color: Colors.white,

              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Term and Conditions",
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),


                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            onTap: ()
            {

            },
          ),




          SizedBox(height: 50,),
          Container(
            child: Center(child: Text("Version:")),
          )




        ],
      ),
    );
  }


}
