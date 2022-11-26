import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Account",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(child: Image.asset("assets/AccAvatar.png")),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text(
                      "Favourite",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  ListTile(
                    title: Text(
                      "Edit Account",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  ListTile(
                    title: Text(
                      "Setting and Privacy",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  ListTile(
                    title: Text(
                      "Help",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
