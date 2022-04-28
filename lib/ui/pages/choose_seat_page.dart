import 'package:air_plane/shared/theme.dart';
import 'package:air_plane/ui/pages/checkout_page.dart';
import 'package:air_plane/ui/widgets/costum_button.dart';
import 'package:air_plane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          "Select Your\nFavorite Seat",
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    //
    Widget setStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Row(
          children: [
            // NOTE : AVAILABLE
            Container(
              margin: const EdgeInsets.only(right: 6),
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_available.png"),
                ),
              ),
            ),
            Text(
              "Available",
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            // NOTE : SELECTED
            Container(
              margin: const EdgeInsets.only(right: 6, left: 10),
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_selected.png"),
                ),
              ),
            ),
            Text(
              "Selected",
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            // NOTE : UNAVAILABLE
            Container(
              margin: const EdgeInsets.only(right: 6, left: 10),
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_unavailable.png"),
                ),
              ),
            ),
            Text(
              "Unavailable",
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      );
    }
    //

    //
    Widget selectSeat() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteCollor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            // NOTE : SEAT INDICATOR
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Text(
                    "A",
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Text(
                    "B",
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Text(
                    "",
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Text(
                    "C",
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Text(
                    "D",
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            // NOTE : SEAT SATU

            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    status: 2,
                  ),
                  const SeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "1",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            // NOTE : SEAT DUA

            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "2",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            // NOTE : SEAT TIGA

            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    status: 1,
                  ),
                  const SeatItem(
                    status: 1,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "3",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            // NOTE : SEAT EMPAT

            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "4",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            // NOTE : SEAT LIMA

            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "5",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(
                    status: 2,
                  ),
                  const SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            // NOTE : YOUR SEAT
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your seat",
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    "A3, B3",
                    style: blackTextStyle.copyWith(
                        fontWeight: medium, fontSize: 16),
                  ),
                ],
              ),
            ),

            // NOTE TOTAL
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    "IDR 540.000.000",
                    style: purpleTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // CHECK OUT BUTTON
    Widget CheckOutButton() {
      return CostumButton(
        title: "Continue to check out",
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CheckOutPage()));
        },
        margin: const EdgeInsets.only(top: 30, bottom: 46),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundCollor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [title(), setStatus(), selectSeat(), CheckOutButton()],
        ),
      ),
    );
  }
}
