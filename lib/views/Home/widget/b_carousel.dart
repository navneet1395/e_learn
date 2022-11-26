import 'package:flutter/material.dart';

class BCarousel extends StatelessWidget {
  const BCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20,0, 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 155,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/illustration.png'))),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "What do you want to learn today ?",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              height: 155,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/illustration.png'))),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "What do you want to learn today ?",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              height: 155,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/illustration.png'))),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "What do you want to learn today ?",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              height: 155,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/illustration.png'))),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "What do you want to learn today ?",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
      ),
    );
  }
}
