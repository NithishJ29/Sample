import 'package:flutter/material.dart';
import 'package:varidose/add_contacts.dart';
import 'package:varidose/history.dart';

class IconBar extends StatefulWidget {
  const IconBar({super.key});

  @override
  State<IconBar> createState() => _IconBarState();
}

class _IconBarState extends State<IconBar> {
  int selectedIndexIcon = -1;
  List<IconData> icons = [
    Icons.home,
    Icons.calendar_month,
    Icons.add,
    Icons.view_comfy_alt_rounded
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(icons.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndexIcon = index;
              });
              if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const History()));
              } else if (index == 2) {
              } else if (index == 3) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddFriend()));
              } else {
                Navigator.pop(context);
              }
            },
            child: Column(
              children: [
                Icon(icons[index],
                    size: 20,
                    color: selectedIndexIcon == index
                        ? Colors.cyan
                        : Colors.black),
                Text(
                  getIconName(icons[index]),
                  style: TextStyle(
                      color: selectedIndexIcon == index
                          ? Colors.cyan
                          : Colors.black),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  String getIconName(IconData icon) {
    if (icon == Icons.home) return 'Home';
    if (icon == Icons.calendar_month) return 'History';
    if (icon == Icons.add) return 'Add';
    if (icon == Icons.view_comfy_alt_rounded) return 'More';
    return '';
  }
}
