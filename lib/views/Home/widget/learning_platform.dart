import 'package:flutter/material.dart';

class LearningPlatform extends StatelessWidget {
  const LearningPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 25),
      margin: EdgeInsets.all(15),
      // color: Colors.white,
      width: 335,
      height: 133,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 5, //spread radius
        //     blurRadius: 7, // blur radius
        //     offset: const Offset(0, 2),
        //   )
        // ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Row(
            children: const [
              SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  value: 0.8,
                  color: Colors.grey,
                  backgroundColor: Colors.white10,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Packageing Design"),
              SizedBox(
                width: 60,
              ),
              Text(
                "40",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("/48", style: TextStyle(color: Color(0xffB8B8D2))),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  value: (6 / 24),
                  color: Colors.grey,
                  backgroundColor: Colors.white10,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Product Design"),
              SizedBox(
                width: 90,
              ),
              Text(
                "6",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "/24",
                style: TextStyle(color: Color(0xffB8B8D2)),
              ),
            ],
          )
        ],
      ),
    );
  }
}