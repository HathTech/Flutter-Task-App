import "package:flutter/material.dart";

class FiltersWidget extends StatefulWidget {
  FiltersWidget({Key key, @required this.updateFilter}) : super(key: key);

  final Function updateFilter;

  @override
  State<StatefulWidget> createState() {
    return FiltersWidgetState();
  }
}

class FiltersWidgetState extends State<FiltersWidget> {
  Widget _buildBadge(title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: () {
          selectedFilter = title.toLowerCase();
          widget.updateFilter(title.toLowerCase());
        },
        child: RawChip(
          padding: EdgeInsets.all(16),
          label: Text(
            title,
            style: TextStyle(
                fontFamily: "Montserrat", fontWeight: FontWeight.bold),
          ),
          labelStyle: TextStyle(
              color: selectedFilter == title.toLowerCase()
                  ? Colors.white
                  : Colors.black,
              fontSize: 14.0),
          backgroundColor: selectedFilter == title.toLowerCase()
              ? Colors.redAccent
              : Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }

  String selectedFilter = "all";

  final List filters = [
    "All",
    "Open",
    "Closed",
    "Expired",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      padding: EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildBadge(filters[index]);
        },
      ),
    );
  }
}
