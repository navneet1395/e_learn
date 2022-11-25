import 'package:e_learn/on_boardingscreen.dart';
import 'package:e_learn/views/Home/widget/a_cont.dart';
import 'package:e_learn/views/Home/widget/b_carousel.dart';
import 'package:e_learn/views/Home/widget/learning_platform.dart';
import 'package:e_learn/views/Login/otp_validation.dart';
import 'package:e_learn/views/SingnUp/sign_up.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> images = [];
Color primaryColor = const Color(0xff3D5CFF);
double value = 40;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  color: primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              "Hi, Kristin",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Text(
                              "Let’s start learning",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 160,
                        ),
                        Image.asset("assets/Avatar.png"),
                      ],
                    ),
                  ),
                ),

                // first container
                const AaContainer(),
                // Bcarousel(),

                //learning Platform
                const Text("Learning Platform",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                const LearningPlatform(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      padding: const EdgeInsets.all(16),
                      height: 400,
                      decoration: BoxDecoration(
                          color: const Color(0xffEFE0FF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Meetup",
                                style: TextStyle(
                                    fontSize: 25, color: Color(0xff440687)),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(70),
                                child: Image.asset(
                                  "assets/lp1.jpeg",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                            ],
                          ),
                          // text("Off-line exchange of learning experiences"),
                        ],
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
