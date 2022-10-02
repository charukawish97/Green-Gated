import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/common/app_responsive.dart';
import 'package:flutter_hr_management/controllers/menu_controller.dart';
import 'package:provider/provider.dart';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.headerColor, borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          if (!AppResponsive.isDesktop(context)) ...{
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: AppColor.white,
              ),
              onPressed: Provider.of<MenuController>(context, listen: false)
                  .controlMenu,
            ),
          },
          // Text(
          //   "Home",
          //   style: TextStyle(
          //     fontSize: 30,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          if (!AppResponsive.isMobile(context)) ...{
            Spacer(),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                navigationIcon(icon: Icons.message_outlined),
                navigationIcon(icon: Icons.notification_add_outlined),
                navigationIcon(icon: Icons.people_alt_rounded),
                SizedBox(
                  width: 10,
                )
              ],
            )
          }
        ],
      ),
    );
  }

  Widget navigationIcon({icon}) {
    return Container(
      padding: const EdgeInsets.all(5),
      // decoration:
      //     BoxDecoration(shape: BoxShape.circle, color: AppColor.hoverColor),
      child: IconButton(
          icon: Icon(
            icon,
            color: AppColor.white,
          ),
          onPressed: () {}),
    );
  }
}
