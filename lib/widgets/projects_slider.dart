import 'package:flutter/material.dart';
import 'package:task_app/widgets/project_card.dart';

import 'carousel_slider.dart';

class ProjectSlider extends StatefulWidget {
  ProjectSlider({@required this.projects}) : super();
  final List projects;
  @override
  _ProjectSliderState createState() => _ProjectSliderState();
}

class _ProjectSliderState extends State<ProjectSlider> {
  int _current = 0;

  buildList(context, store) {
    return ProjectCard();
  }

  buildIndicator(context, index, project, demoSlider) {
    return GestureDetector(
      onTap: () {
        setState(() {
          demoSlider.jumpToPage(index);
        });
      },
      child: Container(
        width: 6.0,
        height: 6.0,
        margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 3.0),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            color: _current == index
                ? Colors.black
                : Colors.grey.withOpacity(0.8)),
      ),
    );
  }

  Widget sliderDemo() {
    final demoSlider = CarouselSlider(
      aspectRatio: 2.0,
      enableInfiniteScroll: true,
      viewportFraction: 0.7,
      scrollPhysics: BouncingScrollPhysics(),
      height: MediaQuery.of(context).size.height * 0.3,
      items: widget.projects
          .map<Widget>((project) => buildList(context, project))
          .toList(),
      autoPlay: true,
      enlargeCenterPage: true,
      onPageChanged: (index) {
        setState(() {
          _current = index;
        });
      },
    );
    return Column(children: [
      demoSlider,
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: widget.projects
                .map<Widget>((store) => buildIndicator(
                    context, widget.projects.indexOf(store), store, demoSlider))
                .toList()),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return sliderDemo();
  }
}
