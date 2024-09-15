import 'package:ecommerce_admin/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
//   list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Timber land',
      price: '144',
      imagePath: 'lib/images/cat-6.jpg',
      description:
          'Brand new sneakers and custom kicks made with premium quality',
    ),
    Shoe(
      name: 'Kitchen Equipments',
      price: '56',
      imagePath: 'lib/images/home2.jpg',
      description:
          'Brand new sneakers and custom kicks made with premium quality',
    ),
    Shoe(
      name: 'iPhone 13 Pro max',
      price: '800',
      imagePath: 'lib/images/home2.jpg',
      description:
          'Brand new sneakers and custom kicks made with premium quality',
    ),
    Shoe(
      name: 'Boot',
      price: '222',
      imagePath: 'lib/images/home2.jpg',
      description:
          'Brand new sneakers and custom kicks made with premium quality',
    ),
  ];
// list of items in the user cart

  List<Shoe> userCart = [];
// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

// get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

// add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
// remove items from cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
