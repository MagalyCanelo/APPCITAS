import 'package:flutter/material.dart';

class CustomPassLect extends StatefulWidget {
  final TextEditingController control;
  final TextInputType tipo;
  final bool hidden;
  final String title;
  const CustomPassLect(
      {super.key,
      required this.control,
      required this.tipo,
      required this.hidden,
      required this.title});

  @override
  _CustomPassLectState createState() => _CustomPassLectState();
}

class _CustomPassLectState extends State<CustomPassLect> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.hidden;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20.0),
      child: SizedBox(
        width: double.infinity,
        height: 55.0,
        child: TextField(
          controller: widget.control,
          keyboardType: widget.tipo,
          obscureText: _obscureText,
          readOnly: true,
          decoration: InputDecoration(
            labelText: widget.title,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
