// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

//import 'package:sample_test/text_buttom.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    Key? key,
    required this.date,
    required this.time,
    required this.medicine,
  }) : super(key: key);
  final String date;
  final String time;
  final String medicine;

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool isIcon = true;

  void toggleIcons() {
    setState(() {
      isIcon = !isIcon;
    });
  }

  bool isInitialText = true;

  String buttonText = 'Untake';
  void changeButtonText() {
    if (isInitialText) {
      buttonText = "Take";
    } else {
      buttonText = "Untake";
    }
    setState(() {
      isInitialText = !isInitialText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext) {
                return AlertDialog(
                  title: Text(
                    widget.date,
                    textAlign: TextAlign.center,
                  ),
                  alignment: Alignment.center,
                  content: Container(
                    width: 165,
                    height: 140,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(39))),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 4),
                                  decoration: ShapeDecoration(
                                      color: const Color(0xFF3DE462),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(39))),
                                  child: Text(
                                    widget.time,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w600,
                                        height: 0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 100,
                          height: 35,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                widget.medicine,
                                style: const TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'Take 5.5ml from cabinet',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color(0xFF898989)),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFDEF9FA),
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 2, color: Color(0xFF5CE0E6)),
                                borderRadius: BorderRadius.circular(70)),
                          ),
                          child: TextButton(
                              child: Text(
                                buttonText,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              onPressed: () {
                                changeButtonText();
                                toggleIcons();

                                Navigator.pop(context);
                              }),
                        )
                      ],
                    ),
                  ),
                );
              });
          //const CustomTextButtom();
        },
        icon: isIcon
            ? const Icon(Icons.check_box, color: Colors.green)
            : const Icon(Icons.cancel, color: Colors.red));
  }
}
