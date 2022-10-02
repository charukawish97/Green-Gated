import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/common/app_responsive.dart';
import 'package:flutter_hr_management/pages/ViewAllPages/viewallboard/ViewAllboard.dart';
import 'package:flutter_hr_management/pages/widget/side_bar_menu.dart';

class ViewAllPages extends StatefulWidget {
  @override
  _ViewAllPagesState createState() => _ViewAllPagesState();
}

class _ViewAllPagesState extends State<ViewAllPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      // key: Provider.of<MenuController>(context, listen: false).scaffoldKey,
      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Side Navigation Menu
            /// Only show in desktop
            if (AppResponsive.isDesktop(context))
              Expanded(
                child: SideBar(),
              ),

            //RegistrationForm(),

            /// Main Body Part
            Expanded(
              flex: 4,
              child: ViewAllboard(),
            ),
          ],
        ),
      ),
    );
  }
}
