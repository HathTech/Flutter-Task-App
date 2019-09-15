import 'package:task_app/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class ProjectCard extends StatelessWidget {
  final List colors = [Colors.redAccent, Colors.blue, Colors.green];

  @override
  Widget build(BuildContext context) {
    var rng = new math.Random.secure();

    return Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 16),
      child: Card(
        color: colors[rng.nextInt(3)],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0.0,
        child: Container(
          padding: EdgeInsets.all(32.0),
          height: MediaQuery.of(context).size.height * 0.3,
          // width: 260,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Branding Studio",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Text(
                  "Homepage design",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "43%",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 4,
              ),
              FAProgressBar(
                size: 4,
                borderRadius: 2,
                currentValue: 43,
                progressColor: Colors.blueAccent,
                backgroundColor: Color(0xffF0F0F0),
              ),
              SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
