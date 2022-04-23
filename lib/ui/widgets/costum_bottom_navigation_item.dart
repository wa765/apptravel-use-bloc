import 'package:flutter/material.dart';
import '../../shared/theme.dart';

//  Namanya Split Widget ini

class CostumNavigationItem extends StatelessWidget {
  const CostumNavigationItem(
      {Key? key, required this.imageUrl, this.isSelected = false})
      : super(key: key);
  //
  final String imageUrl;
  final bool isSelected;
  //
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryCollor : kTransparentCollor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        )
      ],
    );
  }
}
