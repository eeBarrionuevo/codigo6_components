import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grid Page",
        ),
      ),
      // body: GridView(

      // ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
        children: [
          Container(
            color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.network(
                    "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Text(
                  "Batman",
                  style: GoogleFonts.manrope(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Bruce Wayne",
                  style: GoogleFonts.manrope(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "DC Comics",
                  style: GoogleFonts.manrope(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.manrope(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
