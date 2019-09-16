import 'package:flutter/material.dart';
import 'package:task_app/widgets/dashed_rect.dart';
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
                button: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(8),
                    color: Colors.grey,
                    child: Center(
                      child: Icon(
                        Icons.navigate_next,
                        size: 28,
                        color: Colors.orange,
                      ),
                    ),
                    strokeWidth: 1,
                    dashPattern: [3, 4]),
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
                button: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(8),
                    color: Colors.grey,
                    child: Center(
                      child: Icon(
                        Icons.navigate_next,
                        size: 28,
                        color: Colors.orange,
                      ),
                    ),
                    strokeWidth: 1,
                    dashPattern: [3, 4]),
              ),
              SizedBox(
                height: 12.0,
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
