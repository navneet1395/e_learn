import 'package:e_learn/views/Login/otp_next.dart';
import 'package:flutter/material.dart';

class OtpValidation extends StatefulWidget {
  OtpValidation({Key? key}) : super(key: key);

  @override
  State<OtpValidation> createState() => _OtpValidationState();
}

Color bg2 = const Color(0xffF0F0F2);

class _OtpValidationState extends State<OtpValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        color: bg2,
        height: 300,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.remove_red_eye_rounded,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Continue with your Phone",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                "assets/otp1.jpeg",
                height: 124,
                width: 124,
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      const Text(
        "Enter Your Phone Number",
        style: TextStyle(color: Color(0xff858597), fontSize: 14),
      ),
      const SizedBox(
        height: 40,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xff858597)),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              const Flexible(
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(20),
                      //     borderSide: const BorderSide(
                      //       color: Color(0xff3D5CFF),
                      //       width: 0.5,
                      //     )),
                      hintText: ' +91 8293892**'),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(124, 50)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                  // style: ElevatedButton.styleFrom(
                  //     padding: EdgeInsets.fromLTRB(24, 12, 24, 12)),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextOtp())),
                  child: Text(
                    "Continue",
                  )),
            ],
          ),
        ),
      ),
    ]));
  }
}
