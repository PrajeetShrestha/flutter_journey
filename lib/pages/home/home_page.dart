import 'package:flutter/material.dart';
import 'package:flutterjourney/common_widgets/list_with_navigation.dart';
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
        body: ListWithNavigationView(menuItems: menuItems));
  }
}
