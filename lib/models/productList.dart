import 'package:flutter/material.dart';
import 'product.dart';
import '../data/dummy_data.dart';


class ProductList with ChangeNotifier {

  List<Product> _items = DUMMY_PRODUCTS;
  List<Product> get items=>[..._items];
  List<Product> get favoriteItems=>
  _items.where((prod)=>prod.isFavorite).toList(); 

   int get itemsCount {
    return _items.length;
  }

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
//  bool _showFavoriteOnly = false;

//   List<Product> get items {
//     if(_showFavoriteOnly){
//       return _items.where((prod)=>prod.isFavorite).toList();
//     }

//     return [..._items];
//   }

//   void showFavoriteOnly() {
//     _showFavoriteOnly = true;
//     notifyListeners();
//   }

//   void showAll() {
//     _showFavoriteOnly = false;
//     notifyListeners();
//   } referencia do cod usando provider (disp a td a app)