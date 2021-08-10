import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KTitle extends StatelessWidget {
  final String text;
  double size;
  KTitle({required this.text, this.size = 30});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.raleway(
          fontWeight: FontWeight.w700,
          fontSize: size,
        ));
  }
}

class KSubtitle extends StatelessWidget {
  final String text;
  double size;
  final bool overflow;
  KSubtitle({required this.text, this.size = 17, this.overflow = false});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        overflow: overflow ? TextOverflow.ellipsis : TextOverflow.visible,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.normal,
          fontSize: size,
        ));
  }
}
