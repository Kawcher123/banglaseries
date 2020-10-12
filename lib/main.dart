import 'package:banglaseries/constant/Constant.dart';
import 'package:banglaseries/home.dart';
import 'package:banglaseries/neeko_player_widget.dart';
import 'package:banglaseries/screens/splash_screens.dart';
import 'package:banglaseries/video_controller_wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'neeko.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
bool USE_FIRESTORE_EMULATOR = false;
void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bangla Series',
      theme: ThemeData(

          primarySwatch: Colors.red,
          accentColor: Colors.redAccent),
      routes: <String,WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context)=> AnimatedSplashScreen(),
        HOME_SCREEN: (BuildContext context)=>  Home(title: 'Bangla Series'),
      },
      home: AnimatedSplashScreen(),

    );
  }
}

class MyHomePage extends StatefulWidget {

  final String title;
  final DocumentSnapshot episodes;
  MyHomePage({ this.title,this.episodes});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


   VideoControllerWrapper videoControllerWrapper;


  @override
  void initState() {
    super.initState();

    setState(() {
      videoControllerWrapper = VideoControllerWrapper(
        DataSource.network(
            widget.episodes.data['videourl'],
            displayName: widget.episodes.data['name']));
    });

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  }

  @override
  void dispose() {
    SystemChrome.restoreSystemUIOverlays();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NeekoPlayerWidget(

        videoControllerWrapper: videoControllerWrapper,

      ),
    );
  }
}