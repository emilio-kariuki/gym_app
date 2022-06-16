import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_application/Constants/constants.dart';
import '../Controller/item_Controller.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final controller = Get.put(ItemController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
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
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Legs Toning",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: white,
                  )),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "and Glutes Workout",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: white,
                  )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 65,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 124, 124, 217),
                          borderRadius: BorderRadius.circular(6),
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
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 170,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 124, 124, 217),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              CupertinoIcons.antenna_radiowaves_left_right,
                              color: white,
                              size: 15,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Resistent Band, kettlebell",
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
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                width: double.infinity,
                height: size.height * 0.7,
                decoration: const BoxDecoration(
                    color: white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(70))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Circuit 1 : Legs Toning",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            color: kBackgroundColor,
                          )),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
                            child: Row(
                              children: [
                                const Icon(
                                  CupertinoIcons.refresh_circled,
                                  size: 20,
                                  color: kBackgroundColor,
                                ),
                                Text(
                                  "3 sets",
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: kBackgroundColor,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: controller.items.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 6),
                            child: SizedBox(
                              child: Column(children: [
                                ListTile(
                                  leading: Container(
                                    width: size.width * 0.2,
                                    height: size.height * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            controller.items[index].image!),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  title: Text(
                                    "${controller.items[index].category}",
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    )),
                                  ),
                                  subtitle: Text(
                                    "${controller.items[index].description}",
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    )),
                                  ),
                                ),
                                Wrap(
                                  direction: Axis.horizontal,
                                  children: List.generate(
                                      60,
                                      (index) => const Text("-",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black45))),
                                ),
                              ]),
                            ),
                          );
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
