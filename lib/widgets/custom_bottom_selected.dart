import 'package:flutter/material.dart';

class CustomBottomSelected extends StatefulWidget {
  final Function(TimeOfDay) onTimeSelected;
  const CustomBottomSelected({super.key, required this.onTimeSelected});

  @override
  State<CustomBottomSelected> createState() => _CustomBottomSelectedState();
}

class _CustomBottomSelectedState extends State<CustomBottomSelected> {
  List<bool> isSelected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

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
        final time = parseTime(
            label); // Asume que tienes una función para convertir String a TimeOfDay
        if (time != null) {
          widget.onTimeSelected(
              time); // Llama a la función de devolución de llamada con el tiempo seleccionado
          setState(() {
            for (int i = 0; i < isSelected.length; i++) {
              isSelected[i] = false;
            }
            isSelected[index] = true;
          });
        }
      },
      borderRadius: BorderRadius.circular(20.0),
      constraints: const BoxConstraints(minWidth: 70.0, minHeight: 40.0),
    );
  }
}

TimeOfDay? parseTime(String time) {
  final List<String> timeSplit = time.split(':');
  if (timeSplit.length == 2) {
    final int hour = int.tryParse(timeSplit[0]) ?? 0;
    final int minute = int.tryParse(timeSplit[1]) ?? 0;
    return TimeOfDay(hour: hour, minute: minute);
  }
  return null;
}
