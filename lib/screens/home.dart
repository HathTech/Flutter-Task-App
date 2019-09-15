import 'package:flutter/material.dart';
import 'package:task_app/screens/dashboad.dart';
import 'package:task_app/widgets/bottom_nav.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int selectedIndex = 0;

  updateIndex(index) {
    print(index);
    setState(() {
      selectedIndex = index;
    });
  }

  Widget accountTab() {
    return Container(
      padding: EdgeInsets.only(top: 32, left: 8.0, right: 6.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 6.0, top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                selectedIndex == 0 ? 'Dashboard' : 'Projects',
                style: new TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0),
              ),
              new Text(
                'CoreTeam',
                style: new TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 24.0, top: 8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(8.0),
                  image:
                      DecorationImage(image: AssetImage("assets/user.jpeg"))),
              width: 50.0,
              height: 60.0,
            ),
          ),
        ],
      ), //AppBar ,
      body: DefaultTabController(
          initialIndex: 0,
          length: 3,
          child: Scaffold(
            //AppBar ,
            body:
                TabBarView(physics: NeverScrollableScrollPhysics(), children: [
              Dashboard(),
              accountTab(),
              accountTab(),
            ]),

            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: CustomBottomNav(updateIndex),
            ),
            backgroundColor: Colors.white,
          )),
    );
  }
}
