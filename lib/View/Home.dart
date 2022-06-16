import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_application/View/details.dart';

import '../Constants/constants.dart';
import '../Controller/item_Controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = Get.put(ItemController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 70, 30, 0),
          child: Row(
            children: [
              Text(
                "Training",
                style: normalText,
              ),
              Expanded(child: Container()),
              Icon(
                Icons.arrow_back_ios_rounded,
                size: 18,
                color: Colors.grey[700],
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.calendar_today_sharp,
                size: 18,
                color: Colors.grey[700],
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey[700],
                size: 18,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Row(
            children: [
              Text(
                "Your Program",
                style: subText,
              ),
              Expanded(child: Container()),
              Text("Details",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 49, 81, 222),
                  ))),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () => Get.to(() => const Details()),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Color.fromARGB(255, 49, 81, 222),
                  size: 16,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Stack(
            children: [
              Container(
                height: size.height * 0.2,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Next Workout",
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: white,
                        )),
                      ),
                      const SizedBox(
                        height: 5,
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
                    ],
                  ),
                ),
              ),
              Positioned(
                  right: 20,
                  bottom: 20,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                      color: white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.play_arrow_sharp,
                      color: kBackgroundColor,
                    ),
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Container(
                height: size.height * 0.15,
                width: double.infinity,
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                    offset: Offset(1, 1),
                  ),
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                    offset: Offset(-1, 1),
                  ),
                ], color: white, borderRadius: BorderRadius.circular(15)),
              ),
              Container(
                height: size.height * 0.15,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/walking.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                  width: double.maxFinite,
                  height: 100,
                  margin: const EdgeInsets.only(top: 30, left: 150),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("You are doing great",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 49, 81, 222),
                          ))),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Keep it up",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ))),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("stick to your plan",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ))),
                    ],
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Text(
            "Area of Focus",
            style: normalText,
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: size.height * 0.35,
          child: ListView.builder(
            itemCount: controller.items.length ~/ 2,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(1, 1),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(-1, -1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage("assets/beard.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            controller.items[index].category!,
                            style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            )),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(1, 1),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(-1, 1),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage("assets/girl.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            controller.items[index + 1].category!,
                            style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            )),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    ));
  }
}
