import 'package:flutter/material.dart';
import 'package:flutterjourney/pages/state_management/provider_learning/pl_user_model.dart';
import 'package:flutterjourney/pages/state_management/provider_learning/widgets/pl_userlist_widget.dart';

class PlUserListPage extends StatefulWidget {
  const PlUserListPage(
      {Key? key, required this.users, required, required this.onDelete})
      : super(key: key);

  final List<PlUserModel> users;
  final Function(PlUserModel) onDelete;

  @override
  _PlUserListPageState createState() => _PlUserListPageState();
}

class _PlUserListPageState extends State<PlUserListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: PlUserlistWidget(users: widget.users, onDelete: widget.onDelete),
      ),
    );
  }
}
