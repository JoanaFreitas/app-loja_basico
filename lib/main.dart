import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
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
           create: (_)=>  Products(), 
        ),
        ChangeNotifierProvider(
           create: (_)=>  Cart(), 
        ),
      ],
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScren(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (ctx)=>ProductDetailScreen(),
        },
      ),
    );
    
  }
}
//aula 234 parei aqui

