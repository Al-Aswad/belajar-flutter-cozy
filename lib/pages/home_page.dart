import 'package:cozy_kost/theme.dart';
import 'package:cozy_kost/widgets/city_card.dart';
import 'package:flutter/material.dart';
import 'package:cozy_kost/models/city.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
