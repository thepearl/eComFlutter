import 'package:flutter/material.dart';
import 'package:shop_fp1/models/ProductModel.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  color: this.product.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(this.product.image!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child:
                Text(this.product.title!, style: TextStyle(color: kTextColor)),
          ),
          Text(
            "\$${this.product.price}",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
