import 'package:air_plane/shared/theme.dart';
import 'package:air_plane/ui/pages/succes_checkout.dart';
import 'package:air_plane/ui/widgets/booking_detail_item.dart';
import 'package:air_plane/ui/widgets/costum_button.dart';
import 'package:flutter/material.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              height: 65,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image_checkout.png"),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CGK",
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        "Tangerang",
                        style: greyTextStyle.copyWith(fontWeight: light),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "TLC",
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      "Ciliwung",
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    //
    Widget bookingDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteCollor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE : DESTINATION TILE
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        image: AssetImage("assets/image_destination_1.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lake Ciliwung",
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Tangerang",
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 2),
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/icon_star.png"),
                        ),
                      ),
                    ),
                    Text(
                      "4.8",
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    ),
                  ],
                ),
              ],
            ),
            // NOTE : BOOKING DETAIL TEXT
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                "Booking Details",
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
            ),
            // NOTE : BOOKING DETAIL ITEM
            BookingDetailItem(
              title: "Traveler ",
              valueText: "2 Person",
              valueColor: kBlackCollor,
            ),
            BookingDetailItem(
              title: "Seat ",
              valueText: "A3 . B3",
              valueColor: kBlackCollor,
            ),
            BookingDetailItem(
              title: "Insurance ",
              valueText: "Yes",
              valueColor: kGreenCollor,
            ),
            BookingDetailItem(
              title: "Refundable ",
              valueText: "No",
              valueColor: kRedCollor,
            ),
            BookingDetailItem(
              title: "VAT ",
              valueText: "45%",
              valueColor: kBlackCollor,
            ),
            BookingDetailItem(
              title: "Price ",
              valueText: "IDR 8.500.690",
              valueColor: kBlackCollor,
            ),
            BookingDetailItem(
              title: "Grand Total ",
              valueText: "IDR 12.000.000",
              valueColor: kPrimaryCollor,
            ),
          ],
        ),
      );
    }

    //
    Widget paymentDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: kWhiteCollor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Payment Details",
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            Center(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4.0,
                    height: 70,
                    margin: const EdgeInsets.only(top: 16, right: 16),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 23),
                    decoration: BoxDecoration(
                      color: kPrimaryCollor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 6),
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/logo.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text(
                          "Pay",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IDR 80.400.000",
                          style: blackTextStyle.copyWith(
                              fontSize: 18, fontWeight: medium),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Current Balance",
                          style: greyTextStyle.copyWith(fontWeight: light),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    //
    Widget payNowButton() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: CostumButton(
          title: "Pay Now",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SuccesCheckoutPage(),
              ),
            );
          },
        ),
      );
    }

    // Widget tacButton
    Widget tacButton() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Center(
          child: Text(
            "Terms and Conditions",
            style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    //
    return Scaffold(
      backgroundColor: kBackgroundCollor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            route(),
            bookingDetails(),
            paymentDetails(),
            payNowButton(),
            tacButton()
          ],
        ),
      ),
    );
  }
}
