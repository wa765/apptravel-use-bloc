import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class InterestItem extends StatelessWidget {
  //
  final String name;
  //
  const InterestItem({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/icon_check.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(fontWeight: regular),
          )
        ],
      ),
    );
  }
}
