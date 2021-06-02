import 'package:flutter/material.dart';
import 'package:flutterjourney/pages/state_management/provider_learning/pl_user_model.dart';

class PlUserlistWidget extends StatelessWidget {
  const PlUserlistWidget(
      {Key? key, required this.users, required this.onDelete})
      : super(key: key);

  final List<PlUserModel> users;
  final Function(PlUserModel) onDelete;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Name: ${users[index].name}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "City: ${users[index].city}",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () => onDelete(users[index]),
                    icon: Icon(Icons.delete)),
              ],
            ),
          ),
        );
      },
      itemCount: users.length,
    );
  }
}
