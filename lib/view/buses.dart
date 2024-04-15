import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:iconsax/iconsax.dart';
import 'package:student_commute_admin/const.dart';
import 'package:student_commute_admin/utils/buses_slide_show.dart';
import 'package:student_commute_admin/utils/drawer.dart';
import 'package:student_commute_admin/utils/margin.dart';
import 'package:student_commute_admin/utils/style.dart';

class Buses extends StatelessWidget {
  const Buses({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        drawer: const CustomeDrawer(),
        body: CustomeMargin(
          child: Row(
            children: [
            const  BusesSlideShow(),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  child: Column(
                    children: [
                      Text(
                        "Buses",
                        style: poppiStyle(color: WHITE, fontSize: 22),
                      ),
                      SizedBox(
                        height: size.height * .05,
                      ),
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 20,
                          ),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: const CircleAvatar(
                                backgroundColor: WHITE,
                                child: Icon(
                                  Iconsax.bus5,
                                  color: DEFAULT_BLUE_DARK,
                                ),
                              ),
                              title: Text(
                                "Komban",
                                style: poppiStyle(color: WHITE),
                              ),
                              subtitle: Text(
                                "(KL 10-AU 2020)",
                                style: poppiStyle(color: WHITE),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
