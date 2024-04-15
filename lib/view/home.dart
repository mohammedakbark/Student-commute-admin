import 'package:flutter/material.dart';
import 'package:student_commute_admin/const.dart';
import 'package:student_commute_admin/utils/drawer.dart';
import 'package:student_commute_admin/utils/margin.dart';
import 'package:student_commute_admin/utils/style.dart';

class Home extends StatelessWidget {
  Home({super.key});
  String image1 =
      "https://s3-alpha-sig.figma.com/img/da21/e3f2/73fbd54c0a734d0570d8e25c72b4706c?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sg51yuzxMBly4qWj8DHL438cTaX7bcgWkRkB~qdJPeOZEUdd6euKqB0bvL4HT72wlaVA8zuL2swDoX1WplP8f4gyyLjbcuJy-077cdR3414wcibrn5IAgwfKzp-T~nw~-n14nq6lxlYf50sXACLvilddMmlHUfRkYQPC~pfwDZqLODoEDjcHmobv2vzQ~qnn2AtVtDTYWF0QcPhgpSydE2JhwrYvOMf57vDcejKcvWAhTw-0iwCP7cySU55OcDsF9hK27IBYhkaJlTalG3UBcW71brERhfP6Npk-JPTL7KrLg01sHDarr-H3aN~AYHdDgaUyXLtdMD7lDRjciFEUmA__";
  String image2 =
      "https://s3-alpha-sig.figma.com/img/89c6/dd5f/509a10b9749b20a89a000034f11cb0ee?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cgF7kGIzXJ--5rc~xxczu2ruKNN1-4z4-8nm2w4WbpQITc9z-UGDHd2HOfTPxgPG2Ig16XO-n8zMFuiNceYXjgHyBCxwmAsKcDXRHQc9VVslhUrC4KW58rl~YF4374QYTFdJqCR5dTBAI0ZgW~lp3QTcvu68Wb1B0O~xSCRnsTS2yXaEAdAHgnuk01v8IovCiaz3s2gHLuiyhbrifOzVJADAbmUqMQtTzXmdT01ncA8CElWsapQ3L6qbjw-uiOYfMdiVoYrh6MEsmKEPEbYedeluP8dI2RlDjUjYAxd0Ibv5foOVuDALAW~EReG4exvhgxEo9JeG-G8IsNDvAqgZjw__";
  String image3 =
      "https://s3-alpha-sig.figma.com/img/3b70/ce28/aa1d4e67086d21ce5095c6b43847a746?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nRNBSVFO69IFqV-ozRxdWBdPyo7Lx8T2nT1W94Nh0Lt25uGHT7sMzHxJhmaBHqn0ckuoufgiolzQFKeG9Z3QPq0V0vXWiX-IeC~HRpOn7sNUCQNon98A3CSN4UJjXnOLaFyLq~fsznmCQFIYOG6esadIfm3C0w9lXRQr9OGYxbnPB-thg21qWJ8vZYWYYPu5ZVVYvSzy~cuSeGHnmwnwSjWBVJ5YwFUoXwepsw7yQOItkF640z11I-3SYKTSgig94zxFQLtp6Ywx8ikC-Ia0yjVMOcp4dKH-poY11jJiE-kJOj48lh5qwTpeKyZAsBge7pUVPrl-n6kKKs~QFtnUBg__";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(

    
      drawer:const CustomeDrawer(),
      body: CustomeMargin(
        child: Column(
          children: [
            imageHolder(size, image1),
            imageHolder(size, image2),
            imageHolder(size, image3),
            SizedBox(
              height: size.height * .05,
            ),
            Expanded(
                child: ListView.separated(
              itemCount: scheduleList.length,
              separatorBuilder: (context, index) => const SizedBox(
                width: 30,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  // height: 100,
                  width: size.width * .3,
                  child: Text(
                    scheduleList[index]["route"],
                    style: poppiStyle(
                      color: WHITE,
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }

  Widget imageHolder(size, path) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: size.width,
      height: size.height * .18,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(path))),
    );
  }

  List<Map<String, dynamic>> scheduleList = [
    {
      "route": 'Perinthalmanna - Malappuram',
      "time": '12pm',
    },
    {
      "route": 'Perinthalmanna - Manjeri',
      "time": '10am',
    },
    {
      "route": 'Manjeri - Malappuram',
      "time": '3pm',
    },
    {
      "route": 'Perinthalmanna - Kozhikode',
      "time": '1pm',
    },
  ];
}
