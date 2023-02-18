import 'package:flutter/material.dart';

import '../const.dart';

class DetailCard extends StatefulWidget {
  const DetailCard({super.key});

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: white,
          centerTitle: true,
          title: Text(
            'Lead - MV5747831RsHJ',
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
                  labelPadding: const EdgeInsets.symmetric(horizontal: 40),
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: primaryColor, width: 2),
                    insets: const EdgeInsets.symmetric(horizontal: 18),
                  ),
                  tabs: [
                    Tab(
                      child: Text('Lead Info'),
                    ),
                    Tab(
                      child: Text('Documents'),
                    ),
                    Tab(
                      child: Text('Remarks'),
                    ),
                  ])),
        ),
        body: TabBarView(
          children: <Widget>[
            detailCard(),
            Container(
              child: Center(
                child: Text(
                  "Document Area",
                  style: TextStyle(
                      color: black.withOpacity(0.4),
                      fontFamily: 'PopM',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Remarks Area",
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
    );
  }

  detailCard() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
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
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Lead Details",
                            style: TextStyle(
                                color: white,
                                fontFamily: 'PopM',
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(Icons.edit, color: white),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28.0, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lead Name",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "Test",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Mobile Number",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "8074245829",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Service Type",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "Personal Loan",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Salary",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "1,00,000/-",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Company Name",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "HCL Technologies Pvt. Ltd.",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Deal Amount",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "60000/-",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Designation",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "Software Developer",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Obligations",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "30000/-",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Address",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "Hyd",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Follow Up",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "18 Sept. 2021/-",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
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
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Employee Details",
                            style: TextStyle(
                                color: white,
                                fontFamily: 'PopM',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28.0, right: 28.0, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Employee Code",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "321GHJFh78",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Employee Name",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "Naveen",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Reporting Manager",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "Manager",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Designation",
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontFamily: 'PopM',
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "Developer",
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'PopM',
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Container(
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                            color: black.withOpacity(0.1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.call, color: black),
                                Container(
                                  height: 16,
                                  width: 2,
                                  color: black,
                                ),
                                Icon(Icons.whatsapp, color: black),
                                Container(
                                  height: 16,
                                  width: 2,
                                  color: black,
                                ),
                                Icon(Icons.email, color: black),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
