import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:duo_finances/src/ui/pages/enums/day_time.dart';

class CustomHeader extends StatefulWidget {
  const CustomHeader({super.key});

  @override
  State<CustomHeader> createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  @override
  Widget build(BuildContext context) {
    // DateTime now = DateTime.now();
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   border: Border.all(
        //     color: Colors.red,
        //     width: 2.0,
        //   ),
        //   borderRadius: BorderRadius.circular(12.0),
        // ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            customColumn(),
            customImage(),
          ],
        ),
      ),
    );
  }

  SizedBox customSizedBox({required double width}) {
    return SizedBox(
      width: width,
    );
  }

  Icon customIcon() {
    return getPeriodIcon(type: isTimeOfDay(DateTime.now()));
  }

  Row customColumn() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customIcon(),
        customSizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Bom dia, Fabio",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              "Data atual",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w300,
                fontSize: 13,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }

  ClipRRect customImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.asset(
        "assets/images/perfil.png",
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
    );
  }
}
