import 'package:flutter/material.dart';
import 'package:flutterjourney/common_models/list_item.dart';

class ListWithNavigationView extends StatelessWidget {
  const ListWithNavigationView({Key? key, required this.menuItems})
      : super(key: key);
  final List<MenuItem> menuItems;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var item = menuItems[index];
        return ListTile(
          title: Text(item.name),
          onTap: () {
            _showDetail(item, context);
          },
        );
      },
      itemCount: menuItems.length,
    );
  }

  void _showDetail(MenuItem item, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return item.widget;
    }));
  }
}
