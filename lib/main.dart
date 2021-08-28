import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/order.dart';
import 'package:shop/models/order_list.dart';
import 'package:shop/views/cart_page.dart';
import 'package:shop/views/order_page.dart';
import './views/products_overview_screen.dart';
import './utils/app_routes.dart';
import './views/product_detail_screen.dart';
import './providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrderList(),
        ),
      ],
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
      //  home: ProductsOverviewScren(),
        routes: {
          AppRoutes.HOME: (ctx) => ProductsOverviewScren(),
          AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailScreen(),
          AppRoutes.CART: (ctx) => CartPage(),
          AppRoutes.ORDERS: (ctx) => OrderPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
//aula 242 parei aqui

