// ignore_for_file: file_names

import 'package:e_learn/views/Login/login_page.dart';
import 'package:e_learn/views/SingnUp/sign_up.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

List onBoardingData = [
  {
    "image": "assets/onBoard2.jpeg",
    "title": "Numerous free trial courses",
    "description": "Free courses for you to find your way to learning"
  },
  {
    "image": "assets/onBoard1.jpeg",
    "title": "Quick and easy learning",
    "description":
        "Easy and fast learning at any time to help you improve various skills"
  },
  {
    "image": "assets/onBoard3.jpeg",
    "title": "Create your own study plan",
    "description":
        "Study according to the study plan, make study more motivated"
  }
];

Color titleColor = const Color(0xff1F1F39);
Color descColor = const Color(0xff858597);
Color logColor = const Color(0xff3D5CFF);



PageController pageController = PageController();
int currentPage = 0;

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  void onChange(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // padding: const EdgeInsets.all(10),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white, elevation: 0, actions: [
          TextButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage())),
              child: Text(
                "Skip",
                style: TextStyle(color: descColor),
              ))
        ]),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: onBoardingData.length,
              onPageChanged: onChange,
              itemBuilder: ((context, index) => Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          onBoardingData[index]['image'],
                          width: 260,
                          height: 260,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: 180,
                        child: Text(
                          onBoardingData[index]['title'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: titleColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                        // width: double.infinity,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          onBoardingData[index]['description'],
                          textAlign: TextAlign.center,
                          style: TextStyle(color: descColor, fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(onBoardingData.length,
                            (index) {
                          return AnimatedContainer(
                            duration: const Duration(
                              milliseconds: 200,
                            ),
                            height: 5,
                            width: (index == currentPage) ? 28 : 9,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: (index == currentPage)
                                  ? logColor
                                  : const Color(0xffEAEAFF),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: (currentPage == (onBoardingData.length - 1)
                            // ? const ElevatedButton(
                            //     onPressed: continueMethod, child: Text("Login"))
                            ? Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: logColor,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 14),
                                      ),
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignUp())),
                                      child: const Text("Sign Up")),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  ElevatedButton(
                                      // style: ButtonStyle(foregroundColor: MaterialStateProperty.all(logColor),
                                      // backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                      // overlayColor: MaterialStateProperty.all(logColor)),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: logColor,
                                        side: BorderSide(color: logColor),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 14),
                                      ),
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage())),
                                      child: const Text(
                                        "Log in",
                                      )),
                                ],
                              )
                            : const SizedBox()),
                      )
                    ],
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
