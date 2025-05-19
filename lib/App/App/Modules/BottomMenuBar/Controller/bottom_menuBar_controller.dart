
import 'package:flutter/material.dart';

import '../../../../Data/Values/images.dart';

class BottomMenuBarController extends ChangeNotifier {
  bool isLoading = false;
  String? authToken;

  int data = 0;
  // final UserRepository _userRepository;

  // BottomMenuBarController({String? token}) : _userRepository = UserRepository(token: token);

//     Future<void> login(String username, String password) async {
//     isLoading = true;

// try {
//    data="Ramendra";

// } catch (e) {
//   print(e);
// }

//     // try {
//     //   Response response = await _userRepository.login(username, password);
//     //   authToken = response.data['token'];
//     //   _userRepository.updateToken(authToken!);

//     //   // Update token after login
//     // } catch (e) {
//     //   print(e);
//     // } finally {
//     //   isLoading = false;
//     //   notifyListeners();
//     // }
//   }

  add() {
    data++;
    notifyListeners();
  }

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void menuBarChange(index) {
    _currentIndex = index;
    notifyListeners();
  }

  var menubarData = [
    {"icons": ImagesThemes.home, "title": "Home"},
    {"icons": ImagesThemes.leaves, "title": "Leaves"},
    {"icons": ImagesThemes.attendances, "title": "Atten"},
    {"icons": ImagesThemes.profile, "title": "Profile"},
  ];

  List<Widget> pageList = [
    Text("Ramendra"),
    Text("Ramendra A"),
    Text("Ramendra B"),
    Text("Ramendra C"),
  ] as List<Widget>;
}
