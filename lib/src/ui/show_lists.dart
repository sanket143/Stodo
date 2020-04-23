import 'package:flutter/material.dart';

class TaskCategoryList extends StatefulWidget {
  @override
  _TaskCategoryListState createState() => _TaskCategoryListState();
}

class _TaskCategoryListState extends State<TaskCategoryList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text("TODAY"),
                  ),
                  Tab(
                    child: Text("WEEK"),
                  ),
                  Tab(
                    child: Text("MONTH"),
                  ),
                ],
              ),
              body: TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
