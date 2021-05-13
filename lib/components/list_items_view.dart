import 'package:flutter/material.dart';

class ListItemsView extends StatelessWidget {

  final Set<String> list;
  ListItemsView(this.list,);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        childAspectRatio: 1.5,
      ),
      itemCount: this.list.length,
      itemBuilder: (context, index) {
        final String item = list.elementAt(index);
        index++;
        return Card(
          child: GridTile(
            footer: Align(
              child: Text(
                '$item',
              ),
              alignment: Alignment.bottomRight,
            ),
            child: GestureDetector(
              child: Image.asset(
                'assets/images/$item.png',
              ),
              onTap: () => Navigator.of(context).pop(),
            ),
          ),
        );
      },
    );
  }
}