import 'package:e_learn/views/Home/home_scree.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NextOtp extends StatefulWidget {
  const NextOtp({Key? key}) : super(key: key);

  @override
  State<NextOtp> createState() => _NextOtpState();
}

class _NextOtpState extends State<NextOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 70, left: 30, right: 30),
            height: 300,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.no_encryption_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 96,
                    ),
                    Text(
                      "Verify Phone",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text("Code is sent to +91 8373289**",
                    style: TextStyle(color: Color(0xff858597), fontSize: 14)),
                const SizedBox(
                  height: 17,
                ),
                Form(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 50,
                      child: TextField(
                        onChanged: ((value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        }),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color(0xffB8B8D2),
                                  width: 0.5,
                                ))),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 50,
                      child: TextField(
                        onChanged: ((value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        }),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color(0xffB8B8D2),
                                  width: 0.5,
                                ))),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 50,
                      child: TextField(
                        onChanged: ((value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        }),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color(0xffB8B8D2),
                                  width: 0.5,
                                ))),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 50,
                      child: TextField(
                        onChanged: ((value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        }),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color(0xffB8B8D2),
                                  width: 0.5,
                                ))),
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(270, 50)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
              // style: ElevatedButton.styleFrom(
              //     padding: EdgeInsets.fromLTRB(24, 12, 24, 12)),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen())),
              child: const Text(
                "Verify and Create Account",
                style: TextStyle(fontSize: 16),
              )),
        ],
      ),
    );
  }
}
