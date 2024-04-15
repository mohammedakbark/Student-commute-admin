import 'package:flutter/material.dart';
import 'package:student_commute_admin/const.dart';
import 'package:student_commute_admin/utils/buses_slide_show.dart';
import 'package:student_commute_admin/utils/drawer.dart';
import 'package:student_commute_admin/utils/margin.dart';
import 'package:student_commute_admin/utils/style.dart';

class FarDetails extends StatelessWidget {
  const FarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: CustomeDrawer(),
      body: CustomeMargin(
          child: Row(
        children: [
          BusesSlideShow(),
          Expanded(
              child: Column(
            children: [
              Text(
                "Fare Details",
                style: poppiStyle(color: WHITE, fontSize: 22),
              ),
              SizedBox(
                height: size.height * .05,
              ),
              Center(
                child: DataTable(
                  dataTextStyle: TextStyle(
                    color: WHITE,
                  ),
                  dataRowMinHeight: 25,
                  dataRowMaxHeight: 30,

                  border: TableBorder.all(color: WHITE),
                  // showBottomBorder: true,
                  decoration: BoxDecoration(),
                  // border: TableBorder.all(),
                  columns: [
                    DataColumn(
                        label: Text("From",
                            style: poppiStyle(
                                color: WHITE,
                                fontWeight: FontWeight.bold,
                                fontSize: 22))),
                    DataColumn(
                        label: Text("To",
                            style: poppiStyle(
                                color: WHITE,
                                fontWeight: FontWeight.bold,
                                fontSize: 22))),
                    DataColumn(
                        label: Text(
                      "Rs",
                      style: poppiStyle(
                          color: WHITE,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ))
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text("Perinthalmanna")),
                      DataCell(Text("Malappuram")),
                      DataCell(Text("6")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Perinthalmanna")),
                      DataCell(Text("Malappuram")),
                      DataCell(Text("6")),
                    ]),
                  ],
                ),
              ),
            ],
          ))
        ],
      )),
    );
  }
}
