// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
// import 'package:provider/provider.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:tap_to_expand/tap_to_expand.dart';
import 'package:varidose/network_List.dart';

import 'addInfo.dart';

class DeviceList extends StatelessWidget {
  String Serial;
  DeviceList({
    Key? key,
    required this.Serial,
  }) : super(key: key);

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    //final textModel = Provider.of<TextModel>(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Text(
          'Pair Varidose',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        // toolbarHeight: 56,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        // leadingWidth: 0.0,
        // titleSpacing: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TapToExpand(
                openedHeight: 300,
                borderRadius: 16,
                scrollable: true,
                color: Colors.white,
                title: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 0),
                      child: SvgPicture.asset(
                        'Images/box.svg',
                        width: 36,
                        height: 27,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 0),
                      child: Text(Serial),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 60, top: 12),
                      child: Text('xxxxxxxx'),
                    ),
                  ],
                ),
                content: Stack(
                  children: [
                    Container(
                      //color: Colors.lightGreen,
                      margin: const EdgeInsets.only(left: 50),
                      width: 500,
                      height: 130,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Device Serial Number',
                                  style: TextStyle(
                                    color: Color(0xFF898989),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'XX77779999ZZ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            // ignore: prefer_const_constructors
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'No of cabinets',
                                  style: TextStyle(
                                    color: Color(0xFF898989),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '09',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Firmware Version',
                                  style: TextStyle(
                                    color: Color(0xFF898989),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'v1.0',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        //color: const Color(0xFF5CE0E6),
                        width: 200,
                        margin: EdgeInsets.only(top: 150, left: 60),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NetworkList()));
                          },
                          child: const Text(
                            'Connect',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF5CE0E6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ))
                  ],
                ),
              ),
            ),
            const Gap(0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TapToExpand(
                openedHeight: 300,
                borderRadius: 16,
                scrollable: true,
                color: Colors.white,
                title: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 0),
                      child: SvgPicture.asset(
                        'Images/box.svg',
                        width: 36,
                        height: 27,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 60, top: 0),
                      child: Text('Varidose'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 60, top: 12),
                      child: Text('xxxxxxxx'),
                    ),
                  ],
                ),
                content: Stack(
                  children: [
                    Container(
                      //color: Colors.lightGreen,
                      margin: const EdgeInsets.only(left: 50),
                      width: 500,
                      height: 130,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Device Serial Number',
                                  style: TextStyle(
                                    color: Color(0xFF898989),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'XX77779999ZZ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            // ignore: prefer_const_constructors
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'No of cabinets',
                                  style: TextStyle(
                                    color: Color(0xFF898989),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '09',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Firmware Version',
                                  style: TextStyle(
                                    color: Color(0xFF898989),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'v1.0',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        //color: const Color(0xFF5CE0E6),
                        width: 200,
                        margin: EdgeInsets.only(top: 150, left: 60),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Connect',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF5CE0E6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ))
                  ],
                ),
              ),
            ),
            const Gap(0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TapToExpand(
                openedHeight: 300,
                borderRadius: 16,
                scrollable: true,
                color: Colors.white,
                title: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 0),
                      child: SvgPicture.asset(
                        'Images/box.svg',
                        width: 36,
                        height: 27,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 60, top: 0),
                      child: Text('Varidose'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 60, top: 12),
                      child: Text('xxxxxxxx'),
                    ),
                  ],
                ),
                content: Stack(
                  children: [
                    Container(
                      //color: Colors.lightGreen,
                      margin: const EdgeInsets.only(left: 50),
                      width: 500,
                      height: 130,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Device Serial Number',
                                  style: TextStyle(
                                    color: Color(0xFF898989),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'XX77779999ZZ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            // ignore: prefer_const_constructors
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'No of cabinets',
                                  style: TextStyle(
                                    color: Color(0xFF898989),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '09',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Firmware Version',
                                  style: TextStyle(
                                    color: Color(0xFF898989),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'v1.0',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        //color: const Color(0xFF5CE0E6),
                        width: 200,
                        margin: EdgeInsets.only(top: 150, left: 60),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Connect',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF5CE0E6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  String select = '';
}
