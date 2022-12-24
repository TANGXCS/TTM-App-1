import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:ttm_app_checkin/ui/CustomElevetedButtonRounded.dart';
import 'package:ttm_app_checkin/ui/transition/SlideTransition.dart';
import 'package:ttm_app_checkin/utils/common_util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  String timeString = "";
  late Timer timer;

  @override
  void initState() {
    timeString = formatDateTime(DateTime.now());
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) => getTime());
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = formatDateTime(now);
    setState(() {
      timeString = formattedDateTime;
    });
  }

  String formatDateTime(DateTime dateTime) {
    String dateNow = DateFormat('yyyy-MM-dd hh:mm:ss').format(dateTime);
    List<String> dateStrArr = dateNow.split(" ");
    List<String> monthStrArr = dateStrArr[0].split("-");
    int yearTh = int.parse(monthStrArr[0]) + 543;
    switch (monthStrArr[1]) {
      case '01':
        return "${monthStrArr[2]} มกราคม $yearTh \n เวลา ${dateStrArr[1]} น.";
      case '02':
        return "${monthStrArr[2]} กุมภาพันธ์ $yearTh \n เวลา ${dateStrArr[1]} น.";
      case '03':
        return "${monthStrArr[2]} มีนาคม $yearTh \n เวลา ${dateStrArr[1]} น.";
      case '04':
        return "${monthStrArr[2]} เมษายน $yearTh \n เวลา ${dateStrArr[1]} น.";
      case '05':
        return "${monthStrArr[2]} พฤษภาคม $yearTh \n เวลา ${dateStrArr[1]} น.";
      case '06':
        return "${monthStrArr[2]} มิถุนายน $yearTh \n เวลา ${dateStrArr[1]} น.";
      case '07':
        return "${monthStrArr[2]} กรกฎาคม $yearTh \n เวลา ${dateStrArr[1]} น.";
      case '08':
        return "${monthStrArr[2]} สิงหาคม $yearTh \n เวลา ${dateStrArr[1]} น.";
      case '09':
        return "${monthStrArr[2]} กันยายน $yearTh \n เวลา ${dateStrArr[1]} น.";
      case '10':
        return "${monthStrArr[2]} ตุลาคม $yearTh \n เวลา ${dateStrArr[1]} น.";
      case '11':
        return "${monthStrArr[2]} พฤศจิกายน $yearTh \n เวลา ${dateStrArr[1]} น.";
      case '12':
        return "${monthStrArr[2]} ธันวาคม $yearTh \n เวลา ${dateStrArr[1]} น.";

      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      body: Container(
        color: Colors.deepOrange[50],
        child: SafeArea(
            child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.amber,
                            // child: Image.asset("/asset/logo.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Title name"),
                                Text("Subtitle name"),
                              ],
                            ),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.event_available,
                          color: Colors.black,
                          size: 36.0,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      convertWidth(context, 0.1),
                      convertHeigth(context, 0.02),
                      convertWidth(context, 0.1),
                      0),
                  child: Text(
                    timeString,
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      convertWidth(context, 0.2),
                      convertHeigth(context, 0.05),
                      convertWidth(context, 0.2),
                      convertHeigth(context, 0.1)),
                  child: SizedBox(
                    height: convertHeigth(context, 0.4),
                    child: Image.asset("asset/checked.png"),
                  ),
                ),
                SizedBox(
                  width: convertWidth(context, 0.8),
                  child: CustomElevatedButtonRounded(
                    text: 'ยืนยัน',
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const HomeScreen()),
                      // );
                    },
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
