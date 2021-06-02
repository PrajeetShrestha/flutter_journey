import 'package:flutter/material.dart';
import 'package:flutterjourney/pages/state_management/provider_learning/pl_user_model.dart';
import 'package:flutterjourney/pages/state_management/provider_learning/widgets/pl_button_widget.dart';
import 'package:flutterjourney/pages/state_management/provider_learning/widgets/pl_input_widget.dart';
import 'package:flutterjourney/pages/state_management/provider_learning/widgets/pl_userlist_page.dart';
import 'package:flutterjourney/pages/state_management/provider_learning/widgets/pl_userlist_widget.dart';

class ProviderHome extends StatefulWidget {
  const ProviderHome({Key? key}) : super(key: key);

  @override
  _ProviderHomeState createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> {
  String? _name;
  String? _city;

  List<PlUserModel> userList = [];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  _addUser(PlUserModel user) {
    setState(() {
      userList.add(user);
    });
  }

  _deleteUser(PlUserModel user) {
    setState(() {
      userList.removeWhere((element) => element.name == user.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider 5.0.0"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PlInputWidget(
                  labelText: "Name",
                  onSaved: (value) {
                    _name = value;
                  }),
              SizedBox(
                height: 16,
              ),
              PlInputWidget(
                  labelText: "City",
                  onSaved: (value) {
                    _city = value;
                  }),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PLButtonWidget(
                      text: "Add",
                      onPressed: () {
                        if (_formKey.currentState != null &&
                            !_formKey.currentState!.validate()) return;
                        _formKey.currentState!.save();
                        if (_name != null && _city != null) {
                          _addUser(PlUserModel(_name!, _city!));
                        }
                      },
                      color: Colors.lightBlueAccent),
                  SizedBox(
                    width: 8,
                  ),
                  PLButtonWidget(
                      text: "List",
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return PlUserListPage(
                              users: userList, onDelete: _deleteUser);
                        }));
                      },
                      color: Colors.yellowAccent),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child:
                      PlUserlistWidget(users: userList, onDelete: _deleteUser))
            ],
          ),
        ),
      ),
    );
  }
}
