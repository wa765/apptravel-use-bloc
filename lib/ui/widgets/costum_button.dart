import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CostumButton extends StatelessWidget {
  //
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  //
  // final widtg default valuenya == double.infinity
  // double infinity == mengisi ruang yang tersisa
  const CostumButton(
      {Key? key,
      required this.title,
      this.width = double.infinity,
      required this.onPressed,
      this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kPrimaryCollor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      ),
    );
  }
}
