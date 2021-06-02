import 'package:flutter/material.dart';
import 'package:flutterjourney/common_widgets/list_with_navigation.dart';
import 'package:flutterjourney/pages/state_management/sm_sections_data.dart';

class StateManagementPage extends StatelessWidget {
  const StateManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: ListWithNavigationView(
          menuItems: SMSectionsData().menuItems,
        ));
  }
}
