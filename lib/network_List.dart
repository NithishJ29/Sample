import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'homeScreen.dart';

class NetworkList extends StatefulWidget {
  const NetworkList({super.key});

  @override
  State<NetworkList> createState() => _NetworkListState();
}

class _NetworkListState extends State<NetworkList> {
  TextEditingController textEditingController2 = TextEditingController();
  bool isButtonDisabled1 = true;
  void checkTextField() {
    setState(() {
      isButtonDisabled1 = textEditingController2.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    String Network1 = 'Free Wifi';
    String Network2 = 'Home_Airtel';
    String Network3 = 'Pyxill_5G';
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    onTapArrowleftone(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
              title: const Text(
                'WiFi Available',
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
            body: Column(
              children: [
                Container(
                  //  color: Colors.cyan,
                  width: 350,
                  height: 250,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.orange,
                        width: 327,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    width: 24,
                                    height: 24,
                                    child: const Stack(
                                        children: [Icon(Icons.wifi)]),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    Network1,
                                    style: const TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //const SizedBox(width: 150),
                            Container(
                              //color: Colors.yellow,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: TextButton(
                                      child: const Text(
                                        'add',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF5CE0E6),
                                          fontSize: 18,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          ;
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext) {
                                                return SafeArea(
                                                    child: Scaffold(
                                                  appBar: AppBar(
                                                    leading: IconButton(
                                                        onPressed: () {
                                                          onTapArrowleftone(
                                                              context);
                                                        },
                                                        icon: const Icon(
                                                          Icons.arrow_back_ios,
                                                          color: Colors.black,
                                                        )),
                                                    title: Text(
                                                      Network1,
                                                      // Connect(
                                                      //   select: '',
                                                      // ).toString(),
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                    elevation: 0,
                                                    // toolbarHeight: 56,
                                                    automaticallyImplyLeading:
                                                        true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    // leadingWidth: 0.0,
                                                    // titleSpacing: 0,
                                                    centerTitle: true,
                                                  ),
                                                  body: Column(
                                                    children: [
                                                      Container(
                                                        width: 400,
                                                        height: 70,
                                                        child: Stack(
                                                          children: [
                                                            const Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 35),
                                                              child: Text(
                                                                  'Password'),
                                                            ),
                                                            Positioned(
                                                              left: 30,
                                                              top: 26,
                                                              child: Container(
                                                                width: 327,
                                                                height: 44,
                                                                decoration: ShapeDecoration(
                                                                    shape: RoundedRectangleBorder(
                                                                        side: const BorderSide(
                                                                            width:
                                                                                1,
                                                                            color: Colors
                                                                                .black),
                                                                        borderRadius:
                                                                            BorderRadius.circular(50))),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              15,
                                                                          top:
                                                                              4,
                                                                          bottom:
                                                                              2),
                                                                  child:
                                                                      TextField(
                                                                    obscureText:
                                                                        true,
                                                                    obscuringCharacter:
                                                                        '*',
                                                                    controller:
                                                                        textEditingController2,
                                                                    onChanged:
                                                                        (text) {
                                                                      checkTextField();
                                                                    },
                                                                    decoration: const InputDecoration(
                                                                        border: InputBorder
                                                                            .none,
                                                                        hintText:
                                                                            'Enter Password'),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const Gap(20),
                                                      ElevatedButton(
                                                          style: ButtonStyle(
                                                              backgroundColor:
                                                                  MaterialStateProperty
                                                                      .resolveWith<
                                                                          Color>(
                                                                (states) {
                                                                  if (states.contains(
                                                                      MaterialState
                                                                          .disabled)) {
                                                                    return const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        175,
                                                                        222,
                                                                        224);
                                                                  }
                                                                  return const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      58,
                                                                      220,
                                                                      228);
                                                                },
                                                              ),
                                                              minimumSize:
                                                                  const MaterialStatePropertyAll(
                                                                      Size(327,
                                                                          44)),
                                                              shape:
                                                                  MaterialStateProperty
                                                                      .all(
                                                                RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              18),
                                                                ),
                                                              )),
                                                          onPressed:
                                                              isButtonDisabled1
                                                                  ? null
                                                                  : () {},
                                                          child: const Text(
                                                            'Connect',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                          ))
                                                    ],
                                                  ),
                                                ));
                                              });
                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(20),
                      Container(
                        // color: Colors.orange,
                        width: 327,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    width: 24,
                                    height: 24,
                                    child: const Stack(
                                        children: [Icon(Icons.wifi)]),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    Network2,
                                    style: const TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //const SizedBox(width: 150),
                            Container(
                              // color: Colors.yellow,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: TextButton(
                                      child: const Text(
                                        'add',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF5CE0E6),
                                          fontSize: 18,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      onPressed: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext) {
                                              return SafeArea(
                                                  child: Scaffold(
                                                appBar: AppBar(
                                                  leading: IconButton(
                                                      onPressed: () {
                                                        onTapArrowleftone(
                                                            context);
                                                      },
                                                      icon: const Icon(
                                                        Icons.arrow_back_ios,
                                                        color: Colors.black,
                                                      )),
                                                  title: Text(
                                                    Network2,
                                                    // Connect(
                                                    //   select: '',
                                                    // ).toString(),
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  elevation: 0,
                                                  // toolbarHeight: 56,
                                                  automaticallyImplyLeading:
                                                      true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  // leadingWidth: 0.0,
                                                  // titleSpacing: 0,
                                                  centerTitle: true,
                                                ),
                                                body: Column(
                                                  children: [
                                                    Container(
                                                      width: 400,
                                                      height: 70,
                                                      child: Stack(
                                                        children: [
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 35),
                                                            child: Text(
                                                                'Password'),
                                                          ),
                                                          Positioned(
                                                            left: 30,
                                                            top: 26,
                                                            child: Container(
                                                              width: 327,
                                                              height: 44,
                                                              decoration: ShapeDecoration(
                                                                  shape: RoundedRectangleBorder(
                                                                      side: const BorderSide(
                                                                          width:
                                                                              1,
                                                                          color: Colors
                                                                              .black),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              50))),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            15,
                                                                        top: 4,
                                                                        bottom:
                                                                            2),
                                                                child:
                                                                    TextField(
                                                                  obscureText:
                                                                      true,
                                                                  obscuringCharacter:
                                                                      '*',
                                                                  controller:
                                                                      textEditingController2,
                                                                  onChanged:
                                                                      (text) {
                                                                    checkTextField();
                                                                  },
                                                                  decoration: const InputDecoration(
                                                                      border: InputBorder
                                                                          .none,
                                                                      hintText:
                                                                          'Enter Password'),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const Gap(20),
                                                    ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:
                                                                MaterialStateProperty
                                                                    .resolveWith<
                                                                        Color>(
                                                              (states) {
                                                                if (states.contains(
                                                                    MaterialState
                                                                        .disabled)) {
                                                                  return const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      175,
                                                                      222,
                                                                      224);
                                                                }
                                                                return const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    58,
                                                                    220,
                                                                    228);
                                                              },
                                                            ),
                                                            minimumSize:
                                                                const MaterialStatePropertyAll(
                                                                    Size(327,
                                                                        44)),
                                                            shape:
                                                                MaterialStateProperty
                                                                    .all(
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            18),
                                                              ),
                                                            )),
                                                        onPressed:
                                                            isButtonDisabled1
                                                                ? null
                                                                : () {},
                                                        child: const Text(
                                                          'Connect',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                        ))
                                                  ],
                                                ),
                                              ));
                                            });
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(20),
                      Container(
                        // color: Colors.orange,
                        width: 327,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    width: 24,
                                    height: 24,
                                    child: const Stack(
                                        children: [Icon(Icons.wifi)]),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    Network3,
                                    style: const TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //const SizedBox(width: 150),
                            Container(
                              // color: Colors.yellow,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: TextButton(
                                      child: const Text(
                                        'add',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF5CE0E6),
                                          fontSize: 18,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      onPressed: () {
                                        showModalBottomSheet(
                                            context: (context),
                                            builder: (BuildContext) {
                                              return SafeArea(
                                                  child: Scaffold(
                                                appBar: AppBar(
                                                  leading: IconButton(
                                                      onPressed: () {
                                                        onTapArrowleftone(
                                                            context);
                                                      },
                                                      icon: const Icon(
                                                        Icons.arrow_back_ios,
                                                        color: Colors.black,
                                                      )),
                                                  title: Text(
                                                    Network3,
                                                    // Connect(
                                                    //   select: '',
                                                    // ).toString(),
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  elevation: 0,
                                                  // toolbarHeight: 56,
                                                  automaticallyImplyLeading:
                                                      true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  // leadingWidth: 0.0,
                                                  // titleSpacing: 0,
                                                  centerTitle: true,
                                                ),
                                                body: Column(
                                                  children: [
                                                    Container(
                                                      width: 400,
                                                      height: 70,
                                                      child: Stack(
                                                        children: [
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 35),
                                                            child: Text(
                                                                'Password'),
                                                          ),
                                                          Positioned(
                                                            left: 30,
                                                            top: 26,
                                                            child: Container(
                                                              width: 327,
                                                              height: 44,
                                                              decoration: ShapeDecoration(
                                                                  shape: RoundedRectangleBorder(
                                                                      side: const BorderSide(
                                                                          width:
                                                                              1,
                                                                          color: Colors
                                                                              .black),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              50))),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            15,
                                                                        top: 4,
                                                                        bottom:
                                                                            2),
                                                                child:
                                                                    TextField(
                                                                  obscureText:
                                                                      true,
                                                                  obscuringCharacter:
                                                                      '*',
                                                                  controller:
                                                                      textEditingController2,
                                                                  onChanged:
                                                                      (text) {
                                                                    checkTextField();
                                                                  },
                                                                  decoration: const InputDecoration(
                                                                      border: InputBorder
                                                                          .none,
                                                                      hintText:
                                                                          'Enter Password'),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const Gap(20),
                                                    ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:
                                                                MaterialStateProperty
                                                                    .resolveWith<
                                                                        Color>(
                                                              (states) {
                                                                if (states.contains(
                                                                    MaterialState
                                                                        .disabled)) {
                                                                  return const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      175,
                                                                      222,
                                                                      224);
                                                                }
                                                                return const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    58,
                                                                    220,
                                                                    228);
                                                              },
                                                            ),
                                                            minimumSize:
                                                                const MaterialStatePropertyAll(
                                                                    Size(327,
                                                                        44)),
                                                            shape:
                                                                MaterialStateProperty
                                                                    .all(
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            18),
                                                              ),
                                                            )),
                                                        onPressed:
                                                            isButtonDisabled1
                                                                ? null
                                                                : () {},
                                                        child: const Text(
                                                          'Connect',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                        ))
                                                  ],
                                                ),
                                              ));
                                            });
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }

  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
