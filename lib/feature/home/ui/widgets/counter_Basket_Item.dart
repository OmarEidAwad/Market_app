
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/core/helpers/spacing.dart';
import 'package:market_app/core/theiming/colors.dart';
import 'package:market_app/feature/home/ui/widgets/custom_show_modal_bottom_sheet.dart';

class CounterBasketItem extends StatefulWidget {
  const CounterBasketItem({
    super.key,
    required this.basketList, required this.onDelete,
  });

  final List<dynamic> basketList;
  final Function(int) onDelete;

  @override
  State<CounterBasketItem> createState() => _CounterBasketItemState();
}

class _CounterBasketItemState extends State<CounterBasketItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GestureDetector( onTap: () {
                      if (widget.basketList.isNotEmpty ) {

  showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.0),
              ),
              context: context,
              builder: (context) {
                return CustomShowModalBottomSheet(basketList: widget.basketList, onDelete: widget.onDelete,);
              },
            );
}
                },
        child: Container(
          width: double.infinity,
          height: 65.h,
          decoration: BoxDecoration(
            color: ColorsManager.primary,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ListView.builder(
                    itemCount: widget.basketList.length,
                    
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(widget.basketList[index].image),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Spacer(),
                Container(width: 2, height: 40.h, color: Colors.white),
                horizontalSpace(10),
                Text(
                  "View Basket",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 10),
                Badge(
                  backgroundColor: Colors.red,
                  label: Text(
                    widget.basketList.length.toString(),
                    style: TextStyle(fontSize: 13),
                  ),
                  largeSize: 11,
                  child: SvgPicture.asset(
                    "assets/icons/basket.svg",
                    color: Colors.white,
                    height: 16,
                    width: 16,
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
