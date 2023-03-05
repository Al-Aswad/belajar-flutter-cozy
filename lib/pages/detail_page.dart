import 'package:cozy_kost/widgets/fasility_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/cover1.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      // NOTE: TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hott',
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                SizedBox(height: 2),
                                Text.rich(
                                  TextSpan(
                                    text: '\$52',
                                    style: purpleTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' / month',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/icon_star_solid.png',
                                  width: 22,
                                  height: 22,
                                ),
                                SizedBox(height: 2),
                                Image.asset(
                                  'assets/icons/icon_star_solid.png',
                                  width: 22,
                                  height: 22,
                                ),
                                SizedBox(height: 2),
                                Image.asset(
                                  'assets/icons/icon_star_solid.png',
                                  width: 22,
                                  height: 22,
                                ),
                                SizedBox(height: 2),
                                Image.asset(
                                  'assets/icons/icon_star_solid.png',
                                  width: 22,
                                  height: 22,
                                ),
                                SizedBox(height: 2),
                                Image.asset(
                                  'assets/icons/icon_star_solid.png',
                                  width: 22,
                                  height: 22,
                                  color: greyColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      // NOTE: MAIN FACILITIES
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FasilityItem(
                              name: 'Kitchen',
                              total: 2,
                              imageUrl: 'assets/icons/icon_kitchen.png',
                            ),
                            FasilityItem(
                              name: 'Bedroom',
                              total: 1,
                              imageUrl: 'assets/icons/icon_bedroom.png',
                            ),
                            FasilityItem(
                              name: 'Big Lemari',
                              total: 1,
                              imageUrl: 'assets/icons/icon_cupboard.png',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      // NOTE: PHOTO
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photos',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        height: 88,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(width: edge),
                              Image.asset(
                                'assets/images/pic1.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: edge),
                              Image.asset(
                                'assets/images/pic2.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: edge),
                              Image.asset(
                                'assets/images/pic3.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                            ]),
                      ),
                      SizedBox(height: 30),
                      // NOTE: LOCATION
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 6),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jln. Kappan Sukses No. 20 \n Palembang',
                              style: greyTextStyle,
                            ),
                            Image.asset(
                              'assets/icons/icon_location_solid.png',
                              width: 40,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      // NOTE: CTA BUTTON
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: edge),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                          child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      print('back button is clicked');
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/icons/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/icons/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
