import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_app/core/helpers/spacing.dart';
import 'package:market_app/feature/home/data/models/category_model.dart';

class CustomCategoryRow extends StatelessWidget {
  const CustomCategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> category = [
    CategoryModel(name: 'Fruits', image: "assets/category/fruits.png"),
    CategoryModel(name: 'Milk & Egg', image: "assets/category/egg.png"),
    CategoryModel(name: 'Bavergas', image: "assets/category/bavergas.png"),
    CategoryModel(name: 'luandry', image: "assets/category/luandry.png"),
    CategoryModel(name: 'luandry', image: "assets/category/luandry.png"),
  ];
    return SingleChildScrollView(
      
       scrollDirection: Axis.horizontal,
      child: Row(
                children: List.generate(category.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle,
                          ),
                          width: 65.w,
                          height: 65.h,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(category[index].image, width: 40.w),
                          ),
                        ),
                        verticalSpace(10),
                        Text(
                          category[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
    );
  }
}