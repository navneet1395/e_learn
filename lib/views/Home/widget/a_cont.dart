import 'package:e_learn/views/Home/home_scree.dart';
import 'package:flutter/material.dart';

class AaContainer extends StatelessWidget {
  const AaContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Learned today",
                          style: TextStyle(
                              color: Color(0xff858597), fontSize: 12)),
                      // const SizedBox(
                      //   width: 80,
                      // ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          child: const Text("My courses")),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "46min",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "/60min",
                        style:
                            TextStyle(color: Color(0xff858597), fontSize: 10),
                      ),
                    ],
                  ),
                  const SizedBox(
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

//end cousal
    );
  }
}