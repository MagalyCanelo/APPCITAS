import 'package:flutter/material.dart';

class CustomContainerDesplegable extends StatefulWidget {
  final String path;
  final String title;
  final String descripcion1;
  final String descripcion2;
  final String descripcion3;

  const CustomContainerDesplegable(
    {
      super.key,
      required this.path,
      required this.title,
      required this.descripcion1,
      required this.descripcion2,
      required this.descripcion3
    }
  );

  @override
  State<CustomContainerDesplegable> createState() => _CustomContainerDesplegableState();
}

class _CustomContainerDesplegableState extends State<CustomContainerDesplegable> {
  bool showMessage = false;

  void toggleMessage() {
    setState(() {
      showMessage = !showMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 233,
              decoration: BoxDecoration(
                color: const Color(0XFFFFF1F1),
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                    offset: Offset(0, 5)
                  )
                ]
              ),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      widget.path,
                      height: 160.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 3.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontFamily: '',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      ElevatedButton(
                        onPressed: toggleMessage, 
                        child: Icon(Icons.arrow_forward_ios_outlined),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF9F51CA)
                        ),
                      ),
                    ],
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: showMessage ? 80.0 : 0.0,
                    child: showMessage ? 
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            'Incluye:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            )
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            widget.descripcion1,
                            style: const TextStyle(
                              fontFamily: 'Montserrat'
                            )
                          ),
                          Text(
                            widget.descripcion2,
                            style: const TextStyle(
                              fontFamily: 'Montserrat'
                            )
                          ),
                          Text(
                            widget.descripcion3,
                            style: const TextStyle(
                              fontFamily: 'Montserrat'
                            )
                          ),
                        ],
                      ),
                    )
                    :null,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}