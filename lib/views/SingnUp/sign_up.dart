import 'package:e_learn/on_boardingscreen.dart';
import 'package:e_learn/views/Login/login_page.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

Color bg1 = const Color(0xffF0F0F2);
Color textColor = const Color(0xff1F1F39);
bool _isObscure = true;
// bool val = false;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(toolbarHeight: 160,title: const Text("Sign Up"),backgroundColor: bg1,foregroundColor:textColor ,),
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
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1F1F39)),
                        ),
                        const Text(
                          "Enter your details below & free sign up",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffB8B8D2)),
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
                                  builder: (context) => const LoginPage())),
                          child: const Text("Create Account")),
                      const SizedBox(
                        height: 17,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // Checkbox(
                          // value: this.value,
                          // onChanged: (bool value) {
                          //   setState(() {
                          //     this.value = value;
                          //   })
                          const Checkbox(value: false, onChanged: null),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "By creating an account you have to agree with our them & condication.",
                              style: TextStyle(
                                  color: Color(0xffB8B8D2), fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                                color: Color(0xffB8B8D2), fontSize: 12),
                          ),
                          TextButton(
                              onPressed: (() => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginPage()))),
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    color: logColor,
                                    decoration: TextDecoration.underline),
                              ))
                        ],
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
