import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  final List<dynamic> categoryLists;

  const CategoryList(this.categoryLists);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: widget.categoryLists.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemBuilder: (BuildContext context, int index){
          return Container(
            width: 200,
            height: 200,
            child: Center(
              child: Text(widget.categoryLists[index])
            ),
          );
        },
      )
    );
  }
}