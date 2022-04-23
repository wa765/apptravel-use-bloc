import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CostumTextFormField extends StatelessWidget {
//
  final String title;
  final String hintText;
  final bool obsecureText;

//

  const CostumTextFormField(
      {Key? key,
      required this.title,
      required this.hintText,
      this.obsecureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle,
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obsecureText,
            cursorColor: kBlackCollor,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryCollor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
