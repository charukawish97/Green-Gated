import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/pages/dashboard/widget/calender_widget.dart';
import 'package:flutter_hr_management/pages/dashboard/widget/header_widget.dart';
import 'package:flutter_hr_management/pages/security_registration/securityBoard/widgets/RegisterForm.dart';
import 'widgets/RegisteredSecuirtyDetails.dart';
import 'widgets/SecurityDetailCard.dart';

class SecurityRegDashboard extends StatefulWidget {
  @override
  _SecurityRegDashboardState createState() => _SecurityRegDashboardState();
}

class _SecurityRegDashboardState extends State<SecurityRegDashboard> {
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
                    flex: 2,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // if (AppResponsive.isMobile(context)) ...{
                          //   CalendarWidget(),
                          //   SizedBox(
                          //     height: 20,
                          //   ),
                          // },
                          RegistrationForm(),
                          SizedBox(
                            height: 20,
                          ),
                          RegisteredSecuirtyDetails(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SecuirtyDetailCard(),
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
