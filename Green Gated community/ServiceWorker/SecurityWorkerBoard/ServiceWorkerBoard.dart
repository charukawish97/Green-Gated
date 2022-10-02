import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/pages/ServiceWorker/SecurityWorkerBoard/widgets/JanitorForm.dart';
import 'package:flutter_hr_management/pages/dashboard/widget/header_widget.dart';

import 'widgets/JanitorDetailCard.dart';
import 'widgets/RegisteredJanitorDetails.dart';

class ServiceWorkerBoard extends StatefulWidget {
  @override
  _ServiceWorkerBoardState createState() => _ServiceWorkerBoardState();
}

class _ServiceWorkerBoardState extends State<ServiceWorkerBoard> {
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
                          JanitorForm(),
                          SizedBox(
                            height: 20,
                          ),
                          RegJanitorDetails(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          JanitorDetailCard(),
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
