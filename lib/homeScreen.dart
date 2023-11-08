import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:varidose/bottomPage.dart';

import 'package:varidose/help.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            height: 600,
            width: double.infinity,
            color: Color(0xFF5CE0E6),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 30),
                  height: 35,
                  width: 200,
                  //color: Colors.blueAccent,
                  child: const Text(
                    'Adherence score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
                Container(
                  //color: Colors.deepOrangeAccent,
                  child: Stack(
                    children: [
                      SvgPicture.asset('Images/Ellipse.svg'),
                      Container(
                        margin: const EdgeInsets.only(top: 40, left: 70),
                        child: const Opacity(
                          opacity: 0.30,
                          child: Text(
                            '0%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w800,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          width: 150,
                          height: 35,
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          margin: const EdgeInsets.only(
                            top: 80,
                            left: 8,
                          ),
                          child: Container(
                              margin: const EdgeInsets.only(top: 9, right: 5),
                              child: const Text(
                                'Begin to Score ',
                                style: TextStyle(
                                  color: Color(0xFF5CE0E6),
                                  fontSize: 14,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                                textAlign: TextAlign.center,
                              ))),
                      Container(
                          margin: const EdgeInsets.only(top: 90, left: 135),
                          child: SvgPicture.asset('Images/chevron.svg'))
                    ],
                  ),
                ),
                //Gap(10),
                Container(
                  width: double.infinity,
                  height: 366,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(44),
                        topRight: Radius.circular(44),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 35, left: 30),
                        width: 335,
                        height: 120,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 10,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 45, top: 52),
                          child: Image.asset('Images/Asset 1 4.png')),
                      Container(
                        margin: const EdgeInsets.only(left: 173, top: 80),
                        child: const Text(
                          'Add your medicine',
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HelpScreen()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 200, left: 30),
                          width: 335,
                          height: 120,
                          decoration: ShapeDecoration(
                            color: Colors.cyan[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 45, top: 218),
                          child: Image.asset('Images/Pyxill1 (1) 1.png')),
                      Container(
                        margin: EdgeInsets.only(left: 173, top: 245),
                        child: const Text(
                          'Pair Your Device',
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
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            height: 50,
            margin: const EdgeInsets.only(top: 95),
            width: double.infinity,
            child: const IconBar(),
          )
        ],
      ),
    ));
  }
}
