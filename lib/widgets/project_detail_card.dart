import 'package:task_app/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class ProjectDetailCard extends StatelessWidget {
  final List title = [
    "HathTech",
    "Automotive Shop",
    "HathTech Innovations",
  ];

  final List colors = [Colors.blue, Colors.black, Colors.green];

  @override
  Widget build(BuildContext context) {
    var rng = new math.Random.secure();
    return Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
        child: Card(
          elevation: 1.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: ListTile(
              leading: Container(
                child: Center(
                  child: Text(
                    title[rng.nextInt(3)].split(" ")[0][0],
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 24),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(8.0),
                    color: colors[rng.nextInt(3)]),
                width: 70.0,
                height: 80.0,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title[rng.nextInt(3)],
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        fontFamily: "SF"),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "${rng.nextInt(40)} tasks",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 2.0,
                        color: Colors.orange.withOpacity(0.3),
                        height: 15,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "${rng.nextInt(30)} sep 19",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Members",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/user.jpeg"))),
                          width: 40.0,
                          height: 40.0,
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/user.jpeg"))),
                          width: 40.0,
                          height: 40.0,
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/user.jpeg"))),
                          width: 40.0,
                          height: 40.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Progress",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "43%",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  FAProgressBar(
                    size: 4,
                    currentValue: 75,
                    progressColor: Colors.green,
                    backgroundColor: Color(0xffF0F0F0),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
