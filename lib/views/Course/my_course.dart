import 'package:flutter/material.dart';

class MyCourseScreen extends StatelessWidget {
  const MyCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(children: [
        const Center(
            child: Text(
          "My Course",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        )),

        //second Container
        Container(
          height: 100,
          margin: const EdgeInsets.all(15),
          // color: Colors.white,
          width: 335,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  // spreadRadius: 5, //spread radius
                  blurRadius: 5, // blur radius
                  offset: const Offset(0, 5),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Learned today",
                    style: TextStyle(color: Color(0xff858597), fontSize: 12)),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      "46min",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "/60min",
                      style: TextStyle(color: Color(0xff858597), fontSize: 10),
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
        ),
        // third container
        Expanded(
          child: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: [
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: const Color(0xffFFE7EE),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(19, 19, 19, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Product Design v1.0",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      const LinearProgressIndicator(
                        value: (46 / 60),
                        color: Color(0xffEC7B9C),
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Completed",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "46/60",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            height: 44,
                            width: 44,
                            child: IconButton(
                                padding: EdgeInsets.all(0),
                                onPressed: null,
                                icon: Icon(
                                  Icons.play_circle,
                                  size: 44,
                                  color: Color(0xffEC7B9C),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: const Color(0xffBAD6FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(19, 19, 19, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Java Development",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      const LinearProgressIndicator(
                        value: (12 / 18),
                        color: Color(0xff3D5CFF),
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Completed",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "12/18",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            height: 44,
                            width: 44,
                            child: IconButton(
                                padding: EdgeInsets.all(0),
                                onPressed: null,
                                icon: Icon(
                                  Icons.play_circle,
                                  size: 44,
                                  color: Color(0xff3D5CFF),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: const Color(0xffBAE0DB),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(19, 19, 19, 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Visual Design",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      const LinearProgressIndicator(
                        value: (10 / 16),
                        color: Color(0xff398A80),
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Completed",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "10/16",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            height: 44,
                            width: 44,
                            child: IconButton(
                                padding: EdgeInsets.all(0),
                                onPressed: null,
                                icon: Icon(
                                  Icons.play_circle,
                                  size: 44,
                                  color: Color(0xff398A80),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
