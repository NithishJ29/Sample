import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:contacts_service/contacts_service.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';

class AddFriend extends StatefulWidget {
  const AddFriend({super.key});

  @override
  State<AddFriend> createState() => _AddFriendState();
}

class _AddFriendState extends State<AddFriend> {
  PhoneContact? _phoneContact;
  @override
  Widget build(BuildContext context) {
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
          'Share Profile',
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
            margin: const EdgeInsets.only(top: 170, left: 40),
            width: 327,
            height: 256.63,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 104.39,
                  height: 101.63,
                  child: Stack(children: [
                    SvgPicture.asset('Images/Group.svg'),
                  ]),
                ),
                const SizedBox(height: 33),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 283,
                        child: Text(
                          'Add a friend who can see or manage your profile and progress',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 16,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 34),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(19))),
                              context: context,
                              builder: (BuildContext) {
                                return SafeArea(
                                  child: Column(
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                right: 150, top: 60),
                                            child: TextButton(
                                              onPressed: () async {
                                                bool permissiom =
                                                    await FlutterContactPicker
                                                        .requestPermission();
                                                if (permissiom) {
                                                  if (await FlutterContactPicker
                                                      .hasPermission()) {
                                                    _phoneContact =
                                                        await FlutterContactPicker
                                                            .pickPhoneContact();
                                                    if (_phoneContact != null) {
                                                      if (_phoneContact!
                                                          .fullName!
                                                          .isNotEmpty) {
                                                        setState(() {});
                                                      }
                                                      if (_phoneContact!
                                                          .phoneNumber!
                                                          .number!
                                                          .isNotEmpty) {
                                                        _phoneContact!
                                                            .phoneNumber!.number
                                                            .toString();
                                                      }
                                                    }
                                                  }
                                                }
                                              },
                                              child: const Text(
                                                'Add from contacts',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF333333),
                                                  fontSize: 18,
                                                  fontFamily: 'Nunito',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          //const SizedBox(height: 20),
                                          TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              'Add manually',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF333333),
                                                fontSize: 18,
                                                fontFamily: 'Nunito',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Container(
                          width: 327,
                          height: 44,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 327,
                                  height: 44,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF5CE0E6),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(70),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 116,
                                top: 8,
                                child: Text(
                                  'Add friend',
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
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
