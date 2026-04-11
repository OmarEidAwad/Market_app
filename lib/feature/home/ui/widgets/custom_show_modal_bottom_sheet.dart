import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:market_app/core/helpers/spacing.dart';
import 'package:market_app/core/routing/app_router.dart';
import 'package:market_app/core/theiming/colors.dart';

class CustomShowModalBottomSheet extends StatefulWidget {
  const CustomShowModalBottomSheet({
    super.key,
    required this.basketList,
    required this.onDelete,
  });
  final List<dynamic> basketList;
  final Function(int) onDelete;
  @override
  State<CustomShowModalBottomSheet> createState() =>
      _CustomShowModalBottomSheetState();
}

class _CustomShowModalBottomSheetState
    extends State<CustomShowModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 40.w,
          height: 4.h,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: widget.basketList.length,
          itemBuilder: (context, index) {
            return Container(
              child: ListTile(
                leading: Image.asset(widget.basketList[index].image),
                title: Text(widget.basketList[index].name),
                subtitle: Text("\$ ${widget.basketList[index].price}"),
                trailing: Container(
                  height: 32.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() {
                        widget.onDelete(index);
                      });
                      if (widget.basketList.isEmpty) {
                        Navigator.pop(context);
                      }
                    },
                    icon: Icon(
                      Icons.delete_outlined,
                      size: 14,
                      color: const Color.fromARGB(255, 178, 11, 11),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        verticalSpace(32),
        Center(
          child: Text(
            "you are \$3.50 away from free delivery",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        verticalSpace(8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width * .7,
                color: ColorsManager.primary,
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width * .2,
                color: Colors.grey.shade300,
              ),
            ],
          ),
        ),
        verticalSpace(22),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),

          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.primary,
              foregroundColor: ColorsManager.primary,
            ),
            onPressed: () {
              context.pushNamed(AppRoute.checkoutScreen);
            },
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Go to Checkout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  horizontalSpace(12),
                  SvgPicture.asset(
                    'assets/icons/basket.svg',
                    color: Colors.white,
                    width: 16.w,
                    height: 16.h,
                  ),
                ],
              ),
            ),
          ),
        ),
        verticalSpace(16),
      ],
    );
  }
}
