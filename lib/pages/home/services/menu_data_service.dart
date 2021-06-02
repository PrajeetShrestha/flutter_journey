import 'package:flutterjourney/common_models/list_item.dart';
import 'package:flutterjourney/pages/random_words/random_words_page.dart';
import 'package:flutterjourney/pages/state_management/state_management_page.dart';
import 'package:flutterjourney/pages/ui_components/ui_components_page.dart';

class MenuDataService {
  final List<MenuItem> menuItems = [
    MenuItem("RandomWords", RandomWordsPage()),
    MenuItem("UI Components", UIComponentsPage()),
    MenuItem("State Management", StateManagementPage())
  ];
}
