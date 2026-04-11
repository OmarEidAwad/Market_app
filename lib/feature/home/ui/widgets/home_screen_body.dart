import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_app/core/helpers/spacing.dart';
import 'package:market_app/core/theiming/colors.dart';
import 'package:market_app/feature/home/ui/widgets/counter_Basket_Item.dart';
import 'package:market_app/feature/home/ui/widgets/custom_category_row.dart';
import 'package:market_app/feature/home/ui/widgets/product_item.dart';
import 'package:market_app/feature/home/data/models/product_model.dart';
import 'package:market_app/feature/home/ui/widgets/sliding_photos.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});
  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List<ProductModel> product = [
    ProductModel(
      name: "Banana",
      image: "assets/fruits/banana.png",
      price: "3.99",
      rate: "4",
      rateCount: "287",
    ),
    ProductModel(
      name: "Papper",
      image: "assets/fruits/papper.png",
      price: "2.99",
      rate: "4",
      rateCount: "287",
    ),
    ProductModel(
      name: "Orange",
      image: "assets/fruits/orange.png",
      price: "1.99",
      rate: "4",
      rateCount: "287",
    ),
    ProductModel(
      name: "Egg",
      image: "assets/category/egg.png",
      price: "1.99",
      rate: "4",
      rateCount: "287",
    ),
  ];
  List basketList = [];
  void AddAndRemoveProduct(ProductModel product) {
    setState(() {
      if (basketList.contains(product)) {
        basketList.remove(product);
      } else {
        basketList.add(product);
      }
    });
  }

  bool isSelected(ProductModel product) => basketList.contains(product);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SlidingPhotos(),
          verticalSpace(10),
          CustomCategoryRow(),
          verticalSpace(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fruits",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: ColorsManager.primary,
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: List.generate(product.length, (index) {
                  final item = product[index];
                  return ProductItem(
                    image: item.image,
                    name: item.name,
                    rate: item.rate,
                    rateCount: item.rateCount,
                    price: item.price,
                    onTap: () {
                      AddAndRemoveProduct(item);
                    },
                    icon: isSelected(item)
                        ? Icon(
                            CupertinoIcons.delete,
                            color: Colors.red.shade900,
                            size: 15,
                          )
                        : Icon(Icons.add),
                  );
                }),
              ),
            ),
          ),
          verticalSpace(20),
          CounterBasketItem(
            basketList: basketList,
            onDelete: (index) {
              setState(() {
                basketList.removeAt(index);
              });
            },
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
