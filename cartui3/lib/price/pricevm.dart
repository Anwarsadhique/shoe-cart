// import 'package:flutter/material.dart';

// class PriceViewModel extends ChangeNotifier {
//   String _value1 = "0";
//   String _value2 = "10000";
//   RangeValues _currentRangeValues = const RangeValues(0, 10000);
//   // List<int> list=[1,2,3,4,5,6,67,7,8,9,9,];
  
//   // List<int> get listSorted{
//   //   return list.where((element) => element>5&&element<10).toList();
//   // }

//   String get value1 => _value1;
//   String get value2 => _value2;
//   RangeValues get currentRangeValues => _currentRangeValues;

//   void updateValues(RangeValues values) {

//     _currentRangeValues = values;
//     _value1 = _currentRangeValues.start.round().toString();
//     _value2 = _currentRangeValues.end.round().toString();
//     notifyListeners();
//   }
// }