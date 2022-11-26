import 'package:e_learn/views/Account/account.dart';
import 'package:e_learn/views/Login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Course",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AccountScreen()));
                    },
                    icon: const ImageIcon(
                      AssetImage("assets/AccAvatar.png"),
                      size: 34,
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            //Search BAr
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color(0xffF4F3FD),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.search,
                    color: Color(0xffB8B8D2),
                  ),
                  Text(
                    "Find Course",
                    style: TextStyle(color: Color(0xffB8B8D2)),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  IconButton(
                      onPressed: null,
                      color: Color(0xffB8B8D2),
                      icon: Icon(
                        Icons.format_list_bulleted_sharp,
                      ))
                ],
              ),
            ),

            // third Container
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/ads.png"),
                Image.asset("assets/ads2.png")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //check your course
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 0, 5),
              child: SizedBox(
                height: 48,
                width: double.infinity,
                child: Text(
                  "Choice your course",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            //vertical Tab
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 75,
                  // color: Color(0xff3D5CFF),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff3D5CFF)),
                  child: Center(
                    child: Text(
                      "All",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 75,
                  // color: Colors.white,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Text("Popular")),
                ),
                Container(
                  height: 30,
                  width: 75,
                  // color: Colors.white,
                  // color: Color(0xff3D5CFF),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Text("New")),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //course List
            Expanded(
                child: ListView(
              children: [
                ListTile(
                    title: Text("Popular Design v1.0"),
                    leading: Image.asset("assets/course.png"),
                    subtitle: Column(children: [
                      Row(
                        children: const [
                          Icon(Icons.person),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Robertson Connnie"),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "\$160",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xff3D5CFF)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 15,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.red[50]),
                            child: const Center(
                                child: Text(
                              "16 hours",
                              style: TextStyle(color: Colors.red, fontSize: 8),
                            )),
                          )
                        ],
                      ),
                    ])),
                SizedBox(
                  height: 10,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
