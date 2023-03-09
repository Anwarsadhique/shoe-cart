import 'package:flutter/material.dart';

import '../model/models.dart';

class ViewModel with ChangeNotifier {
  // sizeview
    final List<ModelClass> cardList = [  
      ModelClass(size: 1),
      ModelClass(size: 1.5),
      ModelClass(size: 2),
      ModelClass(size: 2.5),
      ModelClass(size: 3),
      ModelClass(size: 3.5),
      ModelClass(size: 4),
      ModelClass(size: 4.5),
      ModelClass(size: 5),
      ModelClass(size: 5.5),
      ModelClass(size: 6),
      ModelClass(size: 6.5),
      ModelClass(size: 7),
      ModelClass(size: 7.5),
      ModelClass(size: 8),
      ModelClass(size: 8.5),
      ModelClass(size: 9),
      ModelClass(size: 9.5),
      ModelClass(size: 10),
      ModelClass(size: 10.5),
      ModelClass(size: 11),
      ModelClass(size: 11.5),
      ModelClass(size: 12),
      ModelClass(size: 12.5),
      ModelClass(size: 13),
      ModelClass(size: 13.5),
      ModelClass(size: 14),
      ModelClass(size: 14.5),
      ModelClass(size: 15),
      ModelClass(size: 15.5),
      ModelClass(size: 16),
      ModelClass(size: 16.5),
      ModelClass(size: 17),
      ModelClass(size: 17.5),
      ModelClass(size: 18),
      ModelClass(size: 18.5),
      ModelClass(size: 19),
      ModelClass(size: 19.5),
      ModelClass(size: 20),
      ModelClass(size: 20.5),
      ModelClass(size: 21),
      ModelClass(size: 21.5),
      ModelClass(size: 22),
      ModelClass(size: 22.5),
  ];

  ModelClass? _selectedCard;

  bool isSelected(ModelClass card) {
    return _selectedCard?.size == card.size;
  }

  void setSelectedCard(ModelClass card) {
    _selectedCard = card;
    print(_selectedCard?.size);
    notifyListeners();
  }

// priceview
  int rangeMin=0;
  int rangeMax=10000;
  RangeValues _currentRangeValues = const RangeValues(0, 10000);
  RangeValues get currentRangeValues => _currentRangeValues;

  void updateValues(RangeValues values) {
    _currentRangeValues = values;
    rangeMin = _currentRangeValues.start.toInt();
    rangeMax = _currentRangeValues.end.toInt();
    print(images.length);
    notifyListeners();
  }

// stockview
  List<ModelClass> _images = [];
   List<ModelClass> get images {
    if (_selectedCard != null) {
      return _images
          .where((element) =>
              element.size == _selectedCard!.size &&
              element.price >= rangeMin &&
              element.price <= rangeMax)
          .toList();
    } else {
      return _images.where((element) =>
          element.price >= rangeMin && element.price <= rangeMax).toList();
    }
  }
  // List<ModelClass> get images => _images.where((element) {
  //   print(element.size?.toString()??""+" fd"+(_selectedCard?.size.toString()??""));
   
  //   return  
  //       element.price>=rangeMin&&element.price<=rangeMax;
  // }
  // ).toList();
  bool _loading = true;
  bool get loading => _loading;

  ViewModel() {
    fetchImages();
  }

  Future<void> fetchImages() async {
    _loading = true;
    notifyListeners();

    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    _images = [
       ModelClass(
        image:
          "https://i.pinimg.com/236x/45/e7/c2/45e7c2e02c789f6ea56258497395c14f.jpg",
        name: 'Nike Air Zoom Pegasus 38',
        price: 3030,
        size: 1
      ),
      
  ModelClass(
      image:
          "https://i.pinimg.com/236x/57/fb/8f/57fb8f6ea9af32f763a28b50d290b73e.jpg",
      name: 'Adidas Ultraboost 21',
      price: 4040,
      size: 1.5),
  ModelClass(
      image:
          "https://i.pinimg.com/236x/a6/a6/36/a6a63605bacef9889643be4c519e7d26.jpg",
      name: 'New Balance Fresh Foam 1080v11',
      price: 5050,
      size: 2),
  ModelClass(
      image:
          "https://i.pinimg.com/236x/98/ba/c8/98bac80dff3f3f54490f9b0f431a53bf.jpg",
      name: 'ASICS Gel-Kayano 28',
      price: 6060,
      size: 2.5),
  ModelClass(
      image:
          "https://i.pinimg.com/236x/36/93/1f/36931fa912ed0e91dff5c261c9ec0661.jpg",
      name: 'Under Armour HOVR  Connected',
      price: 7070,
      size: 3),
  ModelClass(
      image:
          "https://i.pinimg.com/236x/79/44/79/7944791f5f7a69f3bc3c1289740d27b4.jpg",
      name: 'Hoka One One Clifton 8',
      price: 8080,
      size: 1),
  ModelClass(
      image:
          "https://i.pinimg.com/236x/79/8b/1b/798b1bb3694f867e0fcbaf214d00adb4.jpg",
      name: 'Hoka One One Clifton 8',
      price: 9090,
      size: 1.5),
  ModelClass(
      image:
          "https://i.pinimg.com/236x/aa/0b/b4/aa0bb4a785710342b2e1fbca2f51e0c3.jpg",
      name: 'Merrell Moab 2 Waterproof',
      price: 1010,
      size: 2),
  ModelClass(
      image:
          "https://i.pinimg.com/236x/09/92/86/0992863aa5d7743b718565134b5ff0c0.jpg",
      name: 'Skechers GOrun Razor+ Hyper',
      price: 1111,
      size: 2.5),
  ModelClass(
      image:
          "https://i.pinimg.com/236x/01/f5/aa/01f5aa8e1a6722579fbe8500f619a87b.jpg",
      name: 'Converse Chuck Taylor All Star',
      price: 1212,
      size: 3),
  ModelClass(
      image:
          "https://i.pinimg.com/236x/ca/a6/fb/caa6fbc8665968910c0959761022340e.jpg",
      name: 'Timberland 6-Inch Premium Boot',
      price: 1313,
      size: 1),
    ];
    num ssize = 12;
double minPrice = 0;
double maxPrice = 10000;

List<ModelClass> filteredImages = images.where((element) {
  final price = element.price ?? 0;
  return element.size == ssize && price >= minPrice && price <= maxPrice;
}).toList();
print(filteredImages.map((e) => e.name).toList());
    _loading = false;
    notifyListeners();
  }
}






















//     num ssize = 12;
// double minPrice = 0;
// double maxPrice = 10000;

// List<ModelClass> filteredImages = images.where((element) {
//   final price = double.tryParse(element.price ?? "");
//   if (price == null) {
//     return false;
//   }
//   return element.size == ssize && price >= minPrice && price <= maxPrice;
// }).toList();
// print(filteredImages.map((e) => e.name).toList());



//     int size=12;
//     int min=12;
//     int max=12;
// _images.where((element) {
//   final price= double.tryParse(element.price??"");
//   if(price==null){
//     return f alse;
//   }
//   return element.size==size&&price>=min&&price<=max;

// }).toList();