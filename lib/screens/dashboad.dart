import 'package:flutter/material.dart';
import 'package:task_app/widgets/heading.dart';
import 'package:task_app/widgets/project_card_tile.dart';
import 'package:task_app/widgets/projects_slider.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Column(children: [
              SizedBox(
                height: 22,
              ),
              Heading(
                text: Text(
                  "Today's tasks",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
                button: OutlineButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                  textColor: Colors.orange,
                  child: Icon(
                    Icons.navigate_next,
                    size: 28,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 22,
              ),
              ProjectSlider(
                projects: [1, 2, 3, 4, 5],
              ),
              SizedBox(
                height: 12,
              ),
              Heading(
                text: Text(
                  "Open projects",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                button: OutlineButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                  textColor: Colors.orange,
                  child: Icon(
                    Icons.navigate_next,
                    size: 28,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ProjectCardTile();
                  },
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
