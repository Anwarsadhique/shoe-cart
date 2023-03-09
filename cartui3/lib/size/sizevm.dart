// import 'package:cartui3/model/models.dart';
// import 'package:flutter/material.dart';

// class ContentViewModel extends ChangeNotifier {

//   //  List<ModelClass> get sizelist => _cardList;
//   final List<ModelClass> _cardList = [  
//       ModelClass(size: 1),
//       ModelClass(size: 1.5),
//       ModelClass(size: 2),
//       ModelClass(size: 2.5),
//       ModelClass(size: 3),
//       ModelClass(size: 3.5),
//       ModelClass(size: 4),
//       ModelClass(size: 4.5),
//       ModelClass(size: 5),
//       ModelClass(size: 5.5),
//       ModelClass(size: 6),
//       ModelClass(size: 6.5),
//       ModelClass(size: 7),
//       ModelClass(size: 7.5),
//       ModelClass(size: 8),
//       ModelClass(size: 8.5),
//       ModelClass(size: 9),
//       ModelClass(size: 9.5),
//       ModelClass(size: 10),
//       ModelClass(size: 10.5),
//       ModelClass(size: 11),
//       ModelClass(size: 11.5),
//       ModelClass(size: 12),
//       ModelClass(size: 12.5),
//       ModelClass(size: 13),
//       ModelClass(size: 13.5),
//       ModelClass(size: 14),
//       ModelClass(size: 14.5),
//       ModelClass(size: 15),
//       ModelClass(size: 15.5),
//       ModelClass(size: 16),
//       ModelClass(size: 16.5),
//       ModelClass(size: 17),
//       ModelClass(size: 17.5),
//       ModelClass(size: 18),
//       ModelClass(size: 18.5),
//       ModelClass(size: 19),
//       ModelClass(size: 19.5),
//       ModelClass(size: 20),
//       ModelClass(size: 20.5),
//       ModelClass(size: 21),
//       ModelClass(size: 21.5),
//       ModelClass(size: 22),
//       ModelClass(size: 22.5),
//   ];

//   ModelClass? _selectedCard;

//   List<ModelClass> get cardList => _cardList;

//   bool isSelected(ModelClass card) {
//     return _selectedCard?.size == card.size;
//   }

//   void setSelectedCard(ModelClass card) {
//     _selectedCard = card;
//     notifyListeners();
//   }
// }

// class CardModel {
//   final String? label;
//   CardModel({ this.label});
// }