import 'package:cozy_kost/models/space.dart';
import 'package:cozy_kost/models/tips.dart';
import 'package:cozy_kost/theme.dart';
import 'package:cozy_kost/widgets/city_card.dart';
import 'package:cozy_kost/widgets/space_card.dart';
import 'package:cozy_kost/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:cozy_kost/models/city.dart';
import 'package:cozy_kost/models/space.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE: TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 30),
            // NOTE: POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Popular Cities',
                style: redularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 24),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      image_url: 'assets/images/city1.png',
                    ),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Bandung',
                      image_url: 'assets/images/city2.png',
                      isPopular: true,
                    ),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Surabaya',
                      image_url: 'assets/images/city3.png',
                    ),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
            SizedBox(height: 30),
            // NOTE: RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Recommended Space',
                style: redularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/images/space1.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Indonesia',
                      rating: 4,
                    ),
                  ),
                  SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/images/space1.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Indonesia',
                      rating: 4,
                    ),
                  ),
                  SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/images/space1.png',
                      price: 11,
                      city: 'Seattle',
                      country: 'Bogor',
                      rating: 4,
                    ),
                  ),
                  SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/images/space1.png',
                      price: 20,
                      city: 'Jakarta',
                      country: 'Indonesia',
                      rating: 4,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Tips & Guidance',
                style: redularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'City Guidelines',
                      imageUrl: 'assets/images/tips1.png',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  SizedBox(height: 20),
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/images/tips2.png',
                      updatedAt: '11 Dec',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
