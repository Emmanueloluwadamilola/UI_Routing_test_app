import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_app/constants.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: majorColour,
      toolbarHeight: 60,
      title: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "AR",
              style: TextStyle(color: majorColour, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(text: "Hello"),
                      TextSpan(
                          text: " Angel",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]),
              ),
              RichText(
                text: const TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(text: "Good"),
                      TextSpan(
                        text: " Morning",
                      )
                    ]),
              ),
            ],
          ),
        ],
      ),
      actions: const [
        Center(
          child: FaIcon(
            FontAwesomeIcons.facebook,
            size: 32,
          ),
        ),
        SizedBox(width: 15),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.youtube,
              size: 32,
            ),
          ),
        ),
      ],
    );
  }
}
