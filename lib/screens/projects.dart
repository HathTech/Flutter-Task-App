import 'package:flutter/material.dart';
import 'package:task_app/widgets/dashed_rect.dart';
import 'package:task_app/widgets/filter.dart';
import 'package:task_app/widgets/heading.dart';
import 'package:task_app/widgets/project_card_tile.dart';
import 'package:task_app/widgets/project_detail_card.dart';

class Projects extends StatelessWidget {
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
                  "My projects",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
                button: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(8),
                    color: Colors.grey,
                    child: Center(
                      child: Icon(
                        Icons.filter_list,
                        size: 28,
                        color: Colors.orange,
                      ),
                    ),
                    strokeWidth: 1,
                    dashPattern: [3, 4]),
              ),
              SizedBox(
                height: 12,
              ),
              FiltersWidget(
                updateFilter: () {},
              ),
              SizedBox(
                height: 12,
              ),
              Heading(
                text: Text(
                  "You have 11 projects",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500]),
                ),
                button: SizedBox(),
              ),
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ProjectDetailCard();
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
