import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/details/components/product_preview.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ProductPreview(product: product);
  }
}

