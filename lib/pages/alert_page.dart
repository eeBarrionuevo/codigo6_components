import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  void myAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          // backgroundColor: Colors.red,
          elevation: 20,
          title: Text("Hola"),
          content: Text(
            "Este es el contenido de mi AlertDialog donde estoy practicado.",
          ),
          actions: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Aceptar",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Cancelar",
              ),
            )
          ],
        );
      },
    );
  }

  void myAlert2(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 14, horizontal: 16.0),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Caregiver Review",
                style: GoogleFonts.poppins(
                  color: Color(0xff6582B8),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Divider(
                thickness: 1.2,
              ),
              // CircleAvatar(
              //   backgroundColor: Color(0xff789BD6),
              //   radius: 26.0,
              //   child: Icon(
              //     Icons.person,
              //     color: Colors.white,
              //     size: 30.0,
              //   ),
              // ),

              const SizedBox(
                height: 12.0,
              ),

              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Color(0xff789BD6),
                  // borderRadius: BorderRadius.circular(100.0),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),

              const SizedBox(
                height: 10.0,
              ),

              Text(
                "Amanda Johnson",
                style: GoogleFonts.poppins(
                  color: Color(0xff51688F),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Rate the care provided Sanday, Jan 9",
                style: GoogleFonts.poppins(
                  color: Color(0xff51688F),
                  fontWeight: FontWeight.w500,
                  fontSize: 11.0,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffDFE4ED),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xffF7F9FC),
                  border: Border.all(
                    color: const Color(0xff51688F).withOpacity(0.17),
                  ),
                ),
                child: Text(
                  "Additional Comments...",
                  style: GoogleFonts.poppins(
                    color: const Color(0xff51688F),
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.transparent,
                  //     elevation: 0,
                  //   ),
                  //   onPressed: () {},
                  //   child: Text(
                  //     "Not Now",
                  //   ),
                  // ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        side: BorderSide(
                          color: const Color(0xff51688F).withOpacity(0.17),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Not Now",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff789BD6),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Submit Review",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Alert Page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // myAlert(context);
              myAlert2(context);
            },
            child: Text("Alerta 1"),
          ),
        ],
      ),
    );
  }
}
