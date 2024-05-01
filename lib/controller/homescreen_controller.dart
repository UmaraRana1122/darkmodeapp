import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
int selectedIndex = 0;

void onItemTapped(int index) {
    selectedIndex = index;
}
}