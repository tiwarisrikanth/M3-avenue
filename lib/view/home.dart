import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mv/view/detail_card.dart';
import 'dart:math' as math;

import '../const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: white,
            centerTitle: true,
            title: Text(
              'Welcome to M3',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'PopS',
                color: primaryColor,
              ),
            ),
            iconTheme: IconThemeData(color: primaryColor),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(30.0),
                child: TabBar(
                    labelColor: primaryColor,
                    labelStyle: const TextStyle(
                        fontFamily: 'PopS',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    isScrollable: true, // Required
                    unselectedLabelColor: black.withOpacity(0.3),
                    unselectedLabelStyle: const TextStyle(fontFamily: 'PopM'),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 50),
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(color: primaryColor, width: 2),
                      insets: const EdgeInsets.symmetric(horizontal: 18),
                    ),
                    tabs: [
                      Tab(
                        child: Text('Leads'),
                      ),
                      Tab(
                        child: Text('Team Leads'),
                      ),
                    ])),
          ),
          body: TabBarView(
            children: <Widget>[
              leads(),
              Container(
                child: Center(
                  child: Text(
                    "Team Leads Area",
                    style: TextStyle(
                        color: black.withOpacity(0.4),
                        fontFamily: 'PopM',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  leads() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(color: white),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Sort By",
                            style: TextStyle(
                                color: primaryColor, fontFamily: 'PopM'),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 16,
                            color: primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Filter By",
                            style: TextStyle(
                                color: primaryColor, fontFamily: 'PopM'),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 16,
                            color: primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Search",
                            style: TextStyle(
                                color: primaryColor, fontFamily: 'PopM'),
                          ),
                          Spacer(),
                          Icon(
                            Icons.search,
                            size: 16,
                            color: primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => DetailCard(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0, 1),
                              ),
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(-1, 0),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 150,
                                width: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                    color: Colors.green),
                                child: RotatedBox(
                                    quarterTurns: -1,
                                    child: Center(
                                        child: Container(
                                            child: Text(
                                      "Personal Loan",
                                      style: TextStyle(
                                          color: white, fontFamily: 'PopM'),
                                    )))),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.1),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: const Offset(0, 1),
                                          ),
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.1),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: const Offset(-1, 0),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "Prasad kumar",
                                              style: TextStyle(
                                                color: black,
                                                fontFamily: 'PopM',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                              ),
                                              color: primaryColor,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.1),
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: const Offset(0, 1),
                                                ),
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.1),
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: const Offset(-1, 0),
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text(
                                                "M3GHHDJS89",
                                                style: TextStyle(
                                                  color: white,
                                                  fontFamily: 'PopM',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Deal Amount",
                                                style: TextStyle(
                                                    color: secondaryColor,
                                                    fontFamily: "PopM"),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "10,00,000/-",
                                                style: TextStyle(
                                                    color: black,
                                                    fontFamily: "PopM"),
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Income Amount",
                                                style: TextStyle(
                                                    color: secondaryColor,
                                                    fontFamily: "PopM"),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "1,00,000/-",
                                                style: TextStyle(
                                                    color: black,
                                                    fontFamily: "PopM"),
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Pin Code",
                                                style: TextStyle(
                                                    color: secondaryColor,
                                                    fontFamily: "PopM"),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "500012",
                                                style: TextStyle(
                                                    color: black,
                                                    fontFamily: "PopM"),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.call,
                                          color: secondaryColor,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(
                                          Icons.description,
                                          color: secondaryColor,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Lead Status: ",
                                              style: TextStyle(
                                                  color: secondaryColor,
                                                  fontSize: 13,
                                                  fontFamily: "PopM"),
                                            ),
                                            Text(
                                              "Document Pending",
                                              style: TextStyle(
                                                  color: black,
                                                  fontSize: 13,
                                                  fontFamily: "PopS"),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
