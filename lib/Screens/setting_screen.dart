import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/widgets/dialog_box.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
        leading:  IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios,
          color: Colors.black,
        ),),
        backgroundColor: const Color.fromRGBO(248, 247, 247, 1),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            const ListTile(
              title: Text(
                "Change Password",
                style:
                    TextStyle(color: majorColour, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: majorColour,
              ),
            ),
            const ListTile(
              title: Text(
                "About us",
                style:
                    TextStyle(color: majorColour, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: majorColour,
              ),
            ),
            const ListTile(
              title: Text(
                "Privacy Policy",
                style:
                    TextStyle(color: majorColour, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: majorColour,
              ),
            ),
            const ListTile(
              title: Text(
                "Terms and conditions",
                style:
                    TextStyle(color: majorColour, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: majorColour,
              ),
            ),
            const Divider(
              color: majorColour,
              thickness: 1.5,
            ),
            ListTile(
              title: const Text(
                "Log Out",
                style:
                    TextStyle(color: majorColour, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.logout,
                color: majorColour,
              ),
              onTap: () => showDialog(
                  context: context,
                  builder: (context) {
                    return const DialogBoxWidget();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
