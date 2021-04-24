import 'package:flutter/material.dart';
import 'package:key2iqround1/screens/dashBoard/components/body.dart';

class dashBoard extends StatefulWidget {
  static String routeName = "/dashBoard";

  @override
  _dashBoardState createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  final tab = new TabBar(tabs: <Tab>[
    new Tab(icon: new Icon(Icons.arrow_forward)),
    new Tab(icon: new Icon(Icons.arrow_downward)),
    new Tab(icon: new Icon(Icons.arrow_back)),
  ]);
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    switch (_index) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
    }
    return DefaultTabController(
      length: 4,  // Added
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Color(0xfff1f1f1),
        appBar: new AppBar(
            backgroundColor: Colors.white,
            bottom: new TabBar(
                tabs: <Tab>[
                  new Tab(icon: Column(
                    children: [
                      new Icon(Icons.menu,color: Colors.black,),
                      Text("MENU",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 12),)
                    ],
                  )),
                  new Tab(icon: Column(
                    children: [
                      new Icon(Icons.add_moderator,color: Colors.black,),
                      Text("COMPETE",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 12),)
                    ],
                  )),
                  new Tab(icon: Column(
                    children: [
                      new Icon(Icons.where_to_vote,color: Colors.black,),
                      Text("EXPLORE",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 12),)
                    ],
                  )),
                  new Tab(icon: Column(
                    children: [
                      new Icon(Icons.thumb_up,color: Colors.black,),
                      Text("FEEDBACK",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 12),)
                    ],
                  )),
                ]
            )
        ),
        body: Body(),
        floatingActionButton: FloatingActionButton(
          tooltip: 'JUST CLICK BRUH',
          backgroundColor: Colors.orangeAccent,
          foregroundColor: Colors.black,
          child: Icon(Icons.save_alt),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) => setState(() => _index = newIndex),
          currentIndex: _index,
          fixedColor: Colors.deepPurple,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                "COURSES",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt),
                title: Text(
                  "COMMUNITY",
                  style: TextStyle(fontWeight: FontWeight.w800),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                title: Text(
                  "PROFILE",
                  style: TextStyle(fontWeight: FontWeight.w800),
                )),
          ],
        ),
      ),
    );
  }
}
