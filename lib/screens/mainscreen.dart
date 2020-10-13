import 'package:banglaseries/home.dart';
import 'package:banglaseries/screens/homescreen.dart';
import 'package:banglaseries/screens/settings.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  PageController pageController;
  int pageIndex = 0;


  @override
  void initState() {
    super.initState();
    pageController = PageController();

  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }


  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          children: <Widget>[
            HomeScreen(),
            Setting()

          ],
          controller: pageController,
          onPageChanged: onPageChanged,
          //physics: NeverScrollableScrollPhysics(),
        ),






        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.blue),
          child: BottomNavigationBar(
              backgroundColor: Colors.grey[900],
              type: BottomNavigationBarType.fixed,
              currentIndex: pageIndex,
              selectedItemColor: Colors.blue,
              showSelectedLabels: true,
              onTap: onTap,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.grey[500],
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.grey[500]),
                    )),




                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.grey[500],
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(color: Colors.grey[500]),
                    )),

              ]),
        )






    );
  }
}
