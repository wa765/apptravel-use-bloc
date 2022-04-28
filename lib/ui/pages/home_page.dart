import 'package:air_plane/shared/theme.dart';
import 'package:air_plane/ui/widgets/destination_card.dart';
import 'package:air_plane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Header Widget
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,\nKezia Anne",
                    style: blackTextStyle.copyWith(
                        fontSize: 32, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Where to fly today?",
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/image_profile.png"),
                ),
              ),
            )
          ],
        ),
      );
    }

    // Widget Popular Desti Card
    Widget popularDestinations() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: const [
            DestinationCard(
              name: "Lake Ciliwung",
              rating: 4.8,
              city: "Tanggerang",
              imageUrl: "assets/image_destination_1.png",
            ),
            DestinationCard(
              name: "White Houses",
              rating: 4.7,
              city: "Spain",
              imageUrl: "assets/image_destination_2.png",
            ),
            DestinationCard(
              name: "Hill Heyo",
              rating: 4.8,
              city: "Monaco",
              imageUrl: "assets/image_destination_3.png",
            ),
            DestinationCard(
              name: "Menarra",
              rating: 5.0,
              city: "Japan",
              imageUrl: "assets/image_destination_4.png",
            ),
            DestinationCard(
              name: "Payung Teduh",
              rating: 4.8,
              city: "Singapore",
              imageUrl: "assets/image_destination_5.png",
            ),
            const SizedBox(
              width: 30,
            ),
          ]),
        ),
      );
    }

    //
    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const DestinationTile(
              name: "Danau Beratan",
              city: "Singaraja",
              imageUrl: "assets/image_destination_6.png",
              rating: 4.5,
            ),
            const DestinationTile(
              name: "Sdney Opera",
              city: "Australia",
              imageUrl: "assets/image_destination_7.png",
              rating: 4.7,
            ),
            const DestinationTile(
              name: "Roma",
              city: "Italy",
              imageUrl: "assets/image_destination_8.png",
              rating: 4.8,
            ),
            const DestinationTile(
              name: "Payung Teduh",
              city: "Singapore",
              imageUrl: "assets/image_destination_9.png",
              rating: 4.5,
            ),
            const DestinationTile(
              name: "Hill Hey",
              city: "Monaco",
              imageUrl: "assets/image_destination_10.png",
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    //
    return ListView(
      children: [header(), popularDestinations(), newDestinations()],
    );
  }
}
