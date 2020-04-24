import 'package:flutter/material.dart';
import 'package:stodo/src/ui/category_list.dart';

class TaskCategoryList extends StatefulWidget {
  @override
  _TaskCategoryListState createState() => _TaskCategoryListState();
}

class _TaskCategoryListState extends State<TaskCategoryList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: TabBar(
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20.0),
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
                CategoryList(["Personal", "Health", "Doctor"]),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        )
      ),
    );
  }
}
