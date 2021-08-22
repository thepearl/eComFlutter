import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, idx) => (buildCategory(idx))),
      ),
    );
  }

  Widget buildCategory(int idx) => GestureDetector(
        onTap: () => {
          setState(() => {selectedCategoryIndex = idx})
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[idx],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedCategoryIndex == idx
                        ? kTextColor
                        : kTextLightColor),
              ),
              Container(
                margin: EdgeInsets.only(top: kDefaultPadding / 4),
                height: 2,
                width: 30,
                color: selectedCategoryIndex == idx
                    ? Colors.black
                    : Colors.transparent,
              )
            ],
          ),
        ),
      );
}
