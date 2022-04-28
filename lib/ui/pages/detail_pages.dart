import 'package:air_plane/shared/theme.dart';
import 'package:air_plane/ui/pages/choose_seat_page.dart';
import 'package:air_plane/ui/widgets/costum_button.dart';
import 'package:air_plane/ui/widgets/interest_item.dart';
import 'package:air_plane/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1.6,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image_destination_1.png"),
              fit: BoxFit.cover),
        ),
      );
    }

    //
    Widget costumShadow() {
      return Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.7),
        width: double.infinity,
        height: 214,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteCollor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ],
          ),
        ),
      );
    }

    //
    Widget content() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, right: defaultMargin, left: defaultMargin),
        child: Column(
          children: [
            // NOTE : EMBLEM
            Container(
              width: double.infinity,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_emblem.png"),
                ),
              ),
            ),
            // NOTE : TITLE
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2.4,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lake Ciliwung",
                          style: whiteTextStyle.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Tangerang",
                          style: whiteTextStyle.copyWith(
                              fontWeight: light, fontSize: 16),
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
                        style: whiteTextStyle.copyWith(fontWeight: medium),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // NOTE : DESCRIPTION
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteCollor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE : ABOUT
                  Text(
                    "About",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  // NOTE : DESCRIPTION
                  Text(
                    "Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                    style: blackTextStyle.copyWith(
                        fontSize: 14, color: kBlackCollor, height: 2),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // NOTE : PHOTOS
                  Text(
                    "Photos",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  Row(
                    children: const [
                      PhotoItem(
                        imageUrl: "assets/image_photo_1.png",
                      ),
                      PhotoItem(imageUrl: "assets/image_photo_2.png"),
                      PhotoItem(imageUrl: "assets/image_photo_3.png")
                    ],
                  ),

                  // NOTE : INTEREST
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Interest",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      InterestItem(name: "Kids Park"),
                      InterestItem(name: "Honor Bridge"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      InterestItem(name: "City Museum"),
                      InterestItem(name: "Central Mall"),
                    ],
                  ),
                ],
              ),
            ),
            // NOTE : PRICE & BOOK BUTTON
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 30),
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      // NOTE : PRICE
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IDR 2.500.000",
                          style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                              overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "per orang",
                          style: greyTextStyle.copyWith(fontWeight: light),
                        ),
                      ],
                    ),
                  ),
                  // NOTE : BOOK BUTTON
                  CostumButton(
                    title: "Book Now",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChooseSeatPage()));
                    },
                    width: MediaQuery.of(context).size.width / 2.2,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    //
    return Scaffold(
      backgroundColor: kBackgroundCollor,
      body: SingleChildScrollView(
        child: Stack(
          children: [backgroundImage(), costumShadow(), content()],
        ),
      ),
    );
  }
}
