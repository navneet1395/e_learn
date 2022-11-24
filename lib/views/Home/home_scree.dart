import 'package:e_learn/on_boardingscreen.dart';
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
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        // height: 100,
                        margin: EdgeInsets.all(15),
                        // color: Colors.white,
                        width: 335,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5, //spread radius
                                blurRadius: 7, // blur radius
                                offset: const Offset(0, 2),
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Learned today",
                                      style: TextStyle(
                                          color: Color(0xff858597),
                                          fontSize: 12)),
                                  // const SizedBox(
                                  //   width: 80,
                                  // ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()));
                                      },
                                      child: const Text("My courses")),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "46min",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "/60min",
                                    style: TextStyle(
                                        color: Color(0xff858597), fontSize: 10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              const LinearProgressIndicator(
                                backgroundColor: Colors.white70,
                                color: Color(0xffFF5106),
                                minHeight: 5,
                                value: 0.7,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
//courosal
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// body: Column(
//         children: [
//           Column(
//             children: [
//               Container(

//                 color: primaryColor,
//                 height: 185,
//                 width: double.infinity,
//                 child: Row(
//                   children: [
//                     Column(
//                       children: const [
//                         Text(
//                           "Hi, Kristin",
//                           style: TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                         Text(
//                           "Let’s start learning",
//                           style: TextStyle(fontSize: 14, color: Colors.white),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       width: 100,
//                     ),
//                     Image.asset("assets/Avatar.png")
//                   ],
//                 ),
//               ),
//               Expanded(child: SingleChildScrollView(child: Container()))
//             ],
//           ),
//         ],
//       ),
