//import 'dart:html';


import 'package:banglaseries/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


final DateTime today = DateTime.now();
final episode = Firestore.instance.collection('episodes');
class Home extends StatefulWidget {
  final String title;
  Home({this.title});

  @override
  _HomeState createState() => _HomeState(
  );
}

class _HomeState extends State<Home> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ogo Bodhu Sundori"),
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[


            SizedBox(height: 20.0,),


            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                //color: Colors.blue,
                child: StreamBuilder<QuerySnapshot>(
                  stream: episode.orderBy("id", descending: false).snapshots(),
                  builder: (context, stream)
                  {
                    if(stream.hasError)
                    {
                      return Text("Error");
                    }
                    if(stream.hasData)
                    {
                      final list=stream.data.documents;


                      return ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: list.length,

                          itemBuilder: (BuildContext context,int index)
                          {
                            //DocumentSnapshot blogs=list[index];
                            DocumentSnapshot episode=list[index];


                               return GestureDetector(
                                 onTap: () {
                                   Navigator.push(context,
                                       MaterialPageRoute(
                                           builder: (_) =>MyHomePage(title: widget.title,episodes: episode,)
                                       )
                                   );
                                 },


                                 child: Container(
                                   height: 120.0,
                                   width: MediaQuery
                                       .of(context)
                                       .size
                                       .width,
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       borderRadius: BorderRadius.circular(5.0),
                                       boxShadow: [
                                         BoxShadow(color: Colors.black12,
                                             offset: Offset(0.0, 2.0),
                                             blurRadius: 6.0
                                         )
                                       ]
                                   ),
                                   margin: EdgeInsets.only(left:8.0,right: 8,bottom: 8),
                                   //color: Colors.white,
                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,

                                     children: <Widget>[

                                       Padding(
                                         padding: const EdgeInsets.all(10.0),
                                         child: ClipRRect(
                                           borderRadius: BorderRadius.all( Radius.circular(5.0)),

                                           child: Image(
                                             width: 100.0,
                                             height:100.0,
                                             image: AssetImage(
                                                 "assets/a.jpg"),
                                             fit: BoxFit.fill,
                                           ),
                                         ),
                                       ),


                                       Expanded(
                                         child: Padding(
                                           padding: const EdgeInsets.all(10.0),
                                           child: Column(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: <Widget>[

                                               Text(
                                                 list[index]["name"],
                                                 style: TextStyle(
                                                     color: Colors.black38,
                                                   fontSize: 20,
                                                   fontWeight: FontWeight.bold
                                                 ),


                                               ),



                                               Text(
                                                 "The series starred Ritabhari Chakraborty and Rajdeep Gupta in lead roles,"
                                                     "while Tulika Basu, Haradhan Bannerjee, Shankar Chakraborty and Bidipta Chakraborty in other pivotal roles. ",
                                                 style: TextStyle(
                                                     color: Colors.grey,
                                                   fontSize: 13
                                                 ),


                                               ),







                                             ],
                                           ),
                                         ),
                                       )


                                     ],
                                   ),
                                 ),


                               );







                          }
                      );
                    }
                    else
                    {
                      return Center(
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(5),
                          child: CircularProgressIndicator(
                            strokeWidth: 2.0,
                            valueColor : AlwaysStoppedAnimation(Colors.blue),
                          ),
                        ),
                      );
                    }
                  },

                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

}
