import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE : 0 is Available , 1 is Selected , 2 is Unaavailable
  final int status;
  //
  const SeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    BackgroundColor() {
      switch (status) {
        case 0:
          return kAavailableCollor;
        case 1:
          return kSelectedCollor;
        case 2:
          return kUnavailableCollor;
        default:
          return kUnavailableCollor;
      }
    }

    //

    //
    BorderColor() {
      switch (status) {
        case 0:
          return kPrimaryCollor;
        case 1:
          return kPrimaryCollor;
        case 2:
          return kUnavailableCollor;
        default:
          return kUnavailableCollor;
      }
    }

    //
    //
    child() {
      switch (status) {
        case 0:
          return const SizedBox();
        case 1:
          return Center(
            child: Text(
              "YOU",
              style: whiteTextStyle.copyWith(fontWeight: semiBold),
            ),
          );
        case 2:
          return const SizedBox();
        default:
          return const SizedBox();
      }
    }

    //
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: BackgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: BorderColor(),
        ),
      ),
      child: child(),
    );
  }
}
