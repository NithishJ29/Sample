import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:varidose/deviceList.dart';
import 'package:provider/provider.dart';

class AddInfo extends StatefulWidget {
  const AddInfo({super.key});

  @override
  State<AddInfo> createState() => _AddInfoState();
}

class TextModel {
  String text = '';
  void setText(String value) {
    text = value;
  }
}

class _AddInfoState extends State<AddInfo> {
  TextEditingController textController = TextEditingController();
  TextEditingController textController1 = TextEditingController();
  bool isButtonDisabled = true;
  void checkTextField() {
    setState(() {
      isButtonDisabled = textController.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
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
          'Pair Varidose',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        //toolbarHeight: 56,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
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
                  padding: EdgeInsets.only(left: 35),
                  child: Text('Serial Number'),
                ),
                Positioned(
                  left: 30,
                  top: 26,
                  child: Container(
                    width: 327,
                    height: 44,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(50))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 4, bottom: 2),
                      child: TextField(
                        controller: textController1,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Serial Number'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          Container(
            width: 400,
            height: 70,
            child: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: Text('PIN'),
                ),
                Positioned(
                  left: 30,
                  top: 26,
                  child: Container(
                    width: 327,
                    height: 44,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(50))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 4, bottom: 2),
                      child: TextField(
                        controller: textController,
                        onChanged: (text) {
                          checkTextField();
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Enter PIN'),
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
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) {
                      if (states.contains(MaterialState.disabled)) {
                        return const Color.fromARGB(255, 175, 222, 224);
                      }
                      return const Color.fromARGB(255, 58, 220, 228);
                    },
                  ),
                  minimumSize: const MaterialStatePropertyAll(Size(327, 44)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  )),
              onPressed: isButtonDisabled
                  ? null
                  : () {
                      // final textModel =
                      //     Provider.of<TextModel>(context, listen: false);
                      // textModel.setText(textController.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeviceList(
                                    Serial: textController1.text,
                                  )));
                    },
              child: const Text(
                'Configure',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    ));
  }

  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
