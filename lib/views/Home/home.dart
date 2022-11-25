import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:e_learn/views/Home/home_scree.dart';
import 'package:e_learn/views/Login/login_page.dart';
import 'package:e_learn/views/Login/otp_next.dart';
import 'package:e_learn/views/Login/otp_validation.dart';
import 'package:e_learn/views/SingnUp/sign_up.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedpage = 0;
  final _pageNo = [
    HomeScreen(),
    const LoginPage(),
    const SignUp(),
    OtpValidation(),
    const NextOtp()
    // ,
    //  Favorite(), CartPage(), ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pageNo[selectedpage],
      ),
      bottomNavigationBar: ConvexAppBar(
        height: 80,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.book, title: 'Courses'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.person, title: 'Account'),
        ],
        style: TabStyle.fixedCircle,
        cornerRadius: 20,
        activeColor: const Color(0xff3D5CFF),
        color: const Color(0xffB8B8D2),
        backgroundColor: Colors.white,
        initialActiveIndex: selectedpage,
        onTap: (int index) {
          setState(() {
            selectedpage = index;
          });
        },
      ),
    );
  }
}
