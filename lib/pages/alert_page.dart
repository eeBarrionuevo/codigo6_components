import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  myAlert(BuildContext context) {
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

  myAlert2(BuildContext context) {
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
              Divider(
                thickness: 1.2,
              ),
              CircleAvatar(
                backgroundColor: Color(0xff789BD6),
                radius: 26.0,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  // borderRadius: BorderRadius.circular(100.0),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  size: 30.0,
                ),
              ),
              Text(
                "Amanda Johnson",
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
