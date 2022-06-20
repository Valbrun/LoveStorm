// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeButton extends StatelessWidget {
  final String routeName;
  final String name;
  final String icon;
  const HomeButton({
    Key? key,
    required this.name,
    required this.routeName,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fullWidth = MediaQuery.of(context).size.width;
    final fullheight = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: fullWidth * 0.8,
          // ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed('/' + routeName, arguments: routeName);
              print(routeName);
            },
            focusColor: Color.fromARGB(255, 247, 70, 6),
            hoverColor: Color.fromARGB(255, 247, 70, 6),
            child: Container(
              // width: fullWidth * 0.9,
              width: fullWidth * 0.9,
              padding: EdgeInsets.all(20),
              // ignore: sort_child_properties_last
              child: Center(
                child: Text(
                  name,
                  // style: GoogleFonts.dancingScript(
                  style: GoogleFonts.dancingScript(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(49, 169, 186, 163),
                borderRadius: BorderRadius.circular(35),
                // shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(196, 158, 158, 158),
                    offset: Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
