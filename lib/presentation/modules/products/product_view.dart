import 'package:flutter/material.dart';
import 'widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ProductViewBody(),
      ),
    );
  }
}