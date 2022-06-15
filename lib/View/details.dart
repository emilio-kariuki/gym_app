import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_application/Constants/constants.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                        color: white,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.info_outline_rounded,
                        size: 20,
                        color: white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Legs Toning",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: white,
                  )),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "and Glutes Workout",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: white,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    width: 65,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 221, 221, 255),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.timer_outlined,
                          color: white,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "60 min",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: white,
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    width: 65,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 221, 221, 255),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.timer_outlined,
                          color: white,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "60 min",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: white,
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
