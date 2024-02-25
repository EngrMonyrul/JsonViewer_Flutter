import 'package:flutter/foundation.dart';

class HomePageProvider extends ChangeNotifier {
  int _selectedSideData = 0;

  int get selectedSideData => _selectedSideData;

  void setSelectedSideData({required int value}) {
    _selectedSideData = value;
    notifyListeners();
  }
}
