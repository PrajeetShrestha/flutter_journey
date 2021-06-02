import 'package:flutter/material.dart';
import 'package:flutterjourney/pages/home/services/menu_data_service.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final menuItems = MenuDataService().menuItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            var item = menuItems[index];
            return GestureDetector(
              child: ListTile(
                  title: Text(item.title),
                  onTap: () {
                    _showDetail(item.route, context);
                  }),
            );
          },
          itemCount: menuItems.length,
        ));
  }

  void _showDetail(String route, BuildContext context) {
    Navigator.pushNamed(context, route);
  }
}
