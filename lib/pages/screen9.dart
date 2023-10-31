import 'package:flutter/material.dart';

class Screen09 extends StatefulWidget {
  const Screen09({super.key});

  @override
  State<Screen09> createState() => _Screen09State();
}

class _Screen09State extends State<Screen09> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF23574),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      color: Color.fromARGB(255, 110, 39, 148),
                      width: 5.0,
                      height: 40.0,
                    ),
                    const SizedBox(width: 10.0),
                    const Text(
                      "SERVICIOS",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Otomanopee One',
                        color: Color(0XFF9F51CA)
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFFFFF1F1)
                  ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('assets/img/ecografiaObstetrica.jpg')
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "ECOGRAFÍA OBSTETRICA",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                minimumSize: Size(20, 40),
                                primary: Color(0XFF9F51CA)
                              ),
                                onPressed: () {}, 
                                child: Icon(Icons.arrow_forward)
                              )
                            ],
                          )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFFFFF1F1)
                  ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('assets/img/ecografiaTransvaginal.jpg')
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "ECOGRAFÍA TRANSVAGINAL",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                minimumSize: Size(20, 40),
                                primary: Color(0XFF9F51CA)
                              ),
                                onPressed: () {}, 
                                child: Icon(Icons.arrow_forward)
                              )
                            ],
                          )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFFFFF1F1)
                  ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('assets/img/controlPrenatal.jpg')
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "CONTROL PRENATAL",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                minimumSize: Size(20, 40),
                                primary: Color(0XFF9F51CA)
                              ),
                                onPressed: () {}, 
                                child: Icon(Icons.arrow_forward)
                              )
                            ],
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}