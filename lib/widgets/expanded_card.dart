import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_app/constants.dart';

class ExpandedCard extends StatelessWidget {
  const ExpandedCard({
    super.key,
    required this.cardPadding,
    required this.cardIcon,
    required this.cardText,
  });
  final cardPadding;
  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: cardPadding,
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 242, 242),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                minRadius: 13,
                //radius: 20,
                child: FaIcon(
                  cardIcon,
                  color: majorColour,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                cardText,
                style: const TextStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
