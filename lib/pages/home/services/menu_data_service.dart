import 'package:flutterjourney/pages/home/models/home_menu_item.dart';

class MenuDataService {
  final List<HomeMenuItem> menuItems = [
    HomeMenuItem("RandomWords", "/random_words"),
    HomeMenuItem("UI Components", '/ui_components'),
    HomeMenuItem("State Management", '/state_management')
  ];
}
