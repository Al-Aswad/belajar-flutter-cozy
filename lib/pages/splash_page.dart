import 'package:cozy_kost/pages/home_page.dart';
import 'package:cozy_kost/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset('assets/images/splash_image.png')),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/icons/logo.png'))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Find Cozy \nHouse to Stay and Happy',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Stop membuang banyak waktu \nuntuk menemukan kos-kosan \nyang cozy',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 50,
                        width: 210,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: purpuleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                          child: Text(
                            'Explore Now',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
