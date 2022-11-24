import 'package:e_learn/on_boardingscreen.dart';
import 'package:e_learn/views/Login/otp_validation.dart';
import 'package:e_learn/views/SingnUp/sign_up.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

Color bg1 = const Color(0xffF0F0F2);
Color textColor = const Color(0xff1F1F39);
bool _isObscure = true;

class _LoginPageState extends State<LoginPage> {
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
                  color: bg1,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Log in",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1F1F39)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 33, 24, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(1),
                        child: Text(
                          "Your Email",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffB8B8D2)),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Color(0xffB8B8D2),
                                width: 0.5,
                              )),
                          hintText: 'abc@email.com',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Text(
                          "Password",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffB8B8D2)),
                        ),
                      ),
                      TextField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color(0xffB8B8D2),
                                  width: 0.5,
                                )),
                            hintText: 'Password',
                            suffixIcon: IconButton(
                                color: textColor,
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                })),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Text(
                        "Forgot Password?",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffB8B8D2)),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ElevatedButton(
                        
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(340, 50),
                            backgroundColor: logColor,
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OtpValidation())),
                          child: const Text("Log In")),
                      const SizedBox(
                        height: 17,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                                color: Color(0xffB8B8D2), fontSize: 12),
                          ),
                          TextButton(
                              onPressed: (() => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()))),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: logColor,
                                ),
                              ))
                        ],
                      ),
                      // Divider(
                      //   height: 5,
                      //   thickness: 0.5,
                      //   indent: 20,
                      //   endIndent: 0,
                      //   color: textColor,
                      // ),

                      Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              color: Color(0xffB8B8D2),
                              thickness: 0.5,
                              height: 3,
                              endIndent: 22,
                            ),
                          ),
                          Text("Or login with",
                              style: TextStyle(
                                  color: Color(0xffB8B8D2), fontSize: 12)),
                          Expanded(
                            child: Divider(
                              color: Color(0xffB8B8D2),
                              thickness: 0.5,
                              height: 10,
                              indent: 22,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 28,
                          width: 122,
                          child: Image.asset("assets/glogo.jpeg"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
