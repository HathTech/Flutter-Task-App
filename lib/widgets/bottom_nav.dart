import "package:flutter/material.dart";

class CustomBottomNav extends StatefulWidget {
  final Function updateIndex;

  CustomBottomNav(this.updateIndex);

  @override
  State<StatefulWidget> createState() {
    return _CustomBottomNav();
  }
}

class _CustomBottomNav extends State<CustomBottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double myHeight = 80.0;
    return Material(
      elevation: 24.0,
      color: Color(0xff17181a),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(8.0),
      ),
      child: Container(
          height: myHeight,
          width: double.infinity,
          margin: EdgeInsets.only(top: 0.0, bottom: 2.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Container(
                  height: myHeight,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.wrap_text,
                        size: 32,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        width: 2.0,
                        color: Colors.orange.withOpacity(0.3),
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.53,
                child: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.home,
                        size: 28.0,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.list,
                        size: 28.0,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.search,
                        size: 28.0,
                      ),
                    ),
                  ],
                  onTap: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });

                    widget.updateIndex(index);
                  },
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.orange.withOpacity(0.8),
                  unselectedLabelColor: Colors.white,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Container(
                width: 65,
                height: 55,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                  color: Color(0xff1e43f9),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )),
    );
  }
}
