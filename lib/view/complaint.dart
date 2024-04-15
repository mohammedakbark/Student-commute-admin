import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:student_commute_admin/const.dart';
import 'package:student_commute_admin/utils/buses_slide_show.dart';
import 'package:student_commute_admin/utils/drawer.dart';
import 'package:student_commute_admin/utils/margin.dart';
import 'package:student_commute_admin/utils/style.dart';

class Complaints extends StatelessWidget {
  const Complaints({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: const CustomeDrawer(),
      body: CustomeMargin(
          child: Row(
        children: [
          const BusesSlideShow(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                children: [
                  Text(
                    "Complaints",
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
                          leading: const CircleAvatar(),
                          title: Text(
                            "Ajmal",
                            style: poppiStyle(color: WHITE),
                          ),
                          subtitle: Column(
                            children: [
                              Text(
                                "Complaint Complaint Complaint Complaint Complaint",
                                style: poppiStyle(
                                    color: const Color.fromARGB(255, 181, 180, 180)),
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Accept",
                                        style: poppiStyle(
                                            color: const Color.fromARGB(
                                                255, 181, 180, 180)),
                                      )),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: DEFAULT_ORANGE),
                                    child: Text(
                                      "Reject",
                                      style: poppiStyle(color: WHITE),
                                    ),
                                  )
                                ],
                              )
                            ],
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
      )),
    );
  }
}
