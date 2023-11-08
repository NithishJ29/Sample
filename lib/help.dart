import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:varidose/addInfo.dart';
import 'package:varidose/network_List.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Help',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        toolbarHeight: 56,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leadingWidth: 0.0,
        titleSpacing: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 10),
            child: Container(
              width: 300,
              height: 107,
              //color: Colors.amber,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      children: [SvgPicture.asset('Images/wifi.svg')],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'Connect to WiFi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        height: 0),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'Try below Instructions to Connect',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF898989),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 0),
                  )
                ],
              ),
            ),
          ),
          const Gap(30),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              width: 327,
              height: 66,
              // color: Colors.cyan,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 33,
                    height: 33,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 33,
                            height: 33,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFDEF9FA),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 12,
                          top: 7,
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  const SizedBox(
                    width: 286,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut nunc ac sapien facilisis.',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              width: 327,
              height: 66,
              //color: Colors.cyan,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 33,
                    height: 33,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 33,
                            height: 33,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFDEF9FA),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 12,
                          top: 7,
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  const SizedBox(
                    width: 286,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut nunc ac sapien facilisis.',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              width: 327,
              height: 66,
              //color: Colors.cyan,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 33,
                    height: 33,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 33,
                            height: 33,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFDEF9FA),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 12,
                          top: 7,
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  const SizedBox(
                    width: 286,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut nunc ac sapien facilisis.',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              width: 327,
              height: 66,
              // color: Colors.cyan,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 33,
                    height: 33,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 33,
                            height: 33,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFDEF9FA),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 12,
                          top: 7,
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  const SizedBox(
                    width: 286,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut nunc ac sapien facilisis.',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(10),
          Container(
            margin: const EdgeInsets.only(left: 30),
            width: 327,
            height: 44,
            decoration: ShapeDecoration(
              color: const Color(0xFF5CE0E6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(70),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AddInfo()));
                },
                child: const Text(
                  'Try pairing again',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
          const Gap(20),
          Container(
            width: 250,
            height: 35,
            //color: Colors.amber,
            margin: const EdgeInsets.only(left: 90),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 9),
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(children: [SvgPicture.asset('Images/home.svg')]),
                ),
                const SizedBox(width: 8),
                Container(
                  // color: Colors.black,
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Back to home',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF5CE0E6),
                        fontSize: 20,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Gap(30),
        ],
      ),
    ));
  }
}
