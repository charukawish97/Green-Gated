import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/pages/HouseOwnerRegistration/HouseOwnerDashboard/widgets/OwnerRegistrationForm.dart';
import 'package:flutter_hr_management/pages/dashboard/widget/header_widget.dart';

import 'widgets/OwnerDetailCard.dart';
import 'widgets/RegisteredOwnerDetails.dart';

class HouseOwnerBoard extends StatefulWidget {
  @override
  _HouseOwnerBoardState createState() => _HouseOwnerBoardState();
}

class _HouseOwnerBoardState extends State<HouseOwnerBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          /// Header Part
          HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OwnerRegistrationForm(),
                          SizedBox(
                            height: 20,
                          ),
                          RegisteredOwnerDetails(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          OwnerDetailCard(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
