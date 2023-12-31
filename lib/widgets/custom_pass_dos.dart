import 'package:flutter/material.dart';

class CustomPassDos extends StatefulWidget {
  final TextInputType tipo;
  final bool hidden;
  final String title;

  const CustomPassDos(
      {
        super.key,
      required this.tipo,
      required this.hidden,
      required this.title
    }
  );

  @override
  _CustomPassDosState createState() => _CustomPassDosState();
}

class _CustomPassDosState extends State<CustomPassDos> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.hidden;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 0.0),
      child: TextField(
        keyboardType: widget.tipo,
        obscureText: _obscureText,
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
    );
  }
}
