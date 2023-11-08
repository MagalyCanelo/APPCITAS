import 'package:flutter/material.dart';

class CustomBottomSelected extends StatefulWidget {
  const CustomBottomSelected({super.key});

  @override
  State<CustomBottomSelected> createState() => _CustomBottomSelectedState();
}

class _CustomBottomSelectedState extends State<CustomBottomSelected> {
  List<bool> isSelected = [false, false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: <Widget>[
                  buildToggleButton(0, '14:00'),
                  buildToggleButton(1, '15:00'),
                  buildToggleButton(2, '15:30'),
                  buildToggleButton(3, '16:00'),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        Row(
          children: <Widget>[
            Expanded(
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: <Widget>[
                  buildToggleButton(4, '16:30'),
                  buildToggleButton(5, '17:00'),
                  buildToggleButton(6, '17:30'),
                  buildToggleButton(7, '18:00'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildToggleButton(int index, String label) {
    return ToggleButtons(
      children: [
        Text(label),
      ],
      isSelected: [isSelected[index]],
      onPressed: (int buttonIndex) {
        setState(() {
          for (int i = 0; i < isSelected.length; i++) {
            isSelected[i] = false;
          }
          isSelected[index] = true;
        });
      },
      borderRadius: BorderRadius.circular(20.0),
      constraints: const BoxConstraints(
        minWidth: 70.0,
        minHeight: 40.0
      ),
    );
  }
}