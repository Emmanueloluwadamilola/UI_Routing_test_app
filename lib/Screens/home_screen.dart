import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/widgets/appbar.dart';
import 'package:test_app/widgets/expanded_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const HomeScreenAppBar(),
        body: Column(children: [
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: double.infinity,
            height: 150,
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/background.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    color: const Color.fromARGB(255, 247, 244, 244),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: majorColour,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "Daily Reading",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                )),
                          ),
                          Expanded(
                            child: TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text(
                                      "About ROCK",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: majorColour, fontSize: 16),
                                    ),
                                  ),
                                )),
                          ),
                          Expanded(
                            child: TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text(
                                      "News",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: majorColour, fontSize: 16),
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 219, 216, 216),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          top: 15, left: 20, right: 20, bottom: 10),
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                ExpandedCard(
                                  cardPadding:
                                      EdgeInsets.only(right: 10, bottom: 10),
                                  cardIcon: FontAwesomeIcons.bookOpen,
                                  cardText: 'Daily Reading',
                                ),
                                ExpandedCard(
                                    cardPadding: EdgeInsets.only(bottom: 10),
                                    cardIcon: FontAwesomeIcons.church,
                                    cardText: 'Church Prayers')
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                ExpandedCard(
                                    cardPadding:
                                        EdgeInsets.only(right: 10, bottom: 10),
                                    cardIcon: FontAwesomeIcons.personPraying,
                                    cardText: 'Holy Rosary'),
                                ExpandedCard(
                                    cardPadding: EdgeInsets.only(bottom: 10),
                                    cardIcon: FontAwesomeIcons.box,
                                    cardText: 'Media Reflection'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                ExpandedCard(
                                    cardPadding:
                                        EdgeInsets.only(right: 10, bottom: 10),
                                    cardIcon: FontAwesomeIcons.laptopMedical,
                                    cardText: 'Prayer Request'),
                                ExpandedCard(
                                    cardPadding: EdgeInsets.only(bottom: 10),
                                    cardIcon: FontAwesomeIcons.cross,
                                    cardText: 'Donation'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
