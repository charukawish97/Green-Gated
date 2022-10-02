import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/pages/HouseOwnerRegistration/HouseOwnerRegistration.dart';
import 'package:flutter_hr_management/pages/ServiceWorker/ServiceWorkerScreen.dart';
import 'package:flutter_hr_management/pages/Settings/settingsScreen.dart';
import 'package:flutter_hr_management/pages/home_page.dart';
import 'package:flutter_hr_management/pages/security_registration/SecurityRegistrationScreen.dart';

class SideBarNew extends StatelessWidget {
  final Function onIndexChanged;

  const SideBarNew({Key key, this.onIndexChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              width: 400,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Image.asset("assets/logo_gatedCommunity.png"),
            ),
            DrawerListTile(
              title: "Home",
              icon: "assets/menu_home.png",
              press: () {
                onIndexChanged(0);
              },
            ),
            DrawerListTile(
              title: "House Owner Registrations",
              icon: "assets/menu_recruitment.png",
              press: () {
                onIndexChanged(1);
              },
            ),
            DrawerListTile(
              title: "Secuirty Info & Registration",
              icon: "assets/menu_onboarding.png",
              press: () {},
            ),
            DrawerListTile(
              title: "Service Workers Registrations",
              icon: "assets/menu_calendar.png",
              press: () {},
            ),
            DrawerListTile(
              title: "Service Bookings",
              icon: "assets/menu_report.png",
              press: () {},
            ),
            DrawerListTile(
              title: "Reports",
              icon: "assets/menu_report.png",
              press: () {},
            ),
            DrawerListTile(
              title: "Settings",
              icon: "assets/menu_settings.png",
              press: () {},
            ),
            Spacer(),
            Image.asset(
              "assets/sidebar_image.png",
              scale: 2,
            )
          ],
        ),
      ),
    );
  }
}

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              width: 400,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Image.asset("assets/logo_gatedCommunity.png"),
            ),
            DrawerListTile(
              title: "Home",
              icon: "assets/menu_home.png",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            DrawerListTile(
              title: "House Owner Registrations",
              icon: "assets/menu_recruitment.png",
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HouseOwnerRegistrationScreen()),
                );
              },
            ),
            DrawerListTile(
              title: "Secuirty Info & Registration",
              icon: "assets/menu_onboarding.png",
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecurityRegistrationScreen()),
                );
              },
            ),
            DrawerListTile(
              title: "Service Workers Registrations",
              icon: "assets/menu_calendar.png",
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ServiceWorkerScreen()),
                );
              },
            ),
            DrawerListTile(
              title: "Service Bookings",
              icon: "assets/menu_report.png",
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
            ),
            DrawerListTile(
              title: "Reports",
              icon: "assets/menu_report.png",
              press: () {},
            ),
            DrawerListTile(
              title: "Settings",
              icon: "assets/menu_settings.png",
              press: () {},
            ),
            Spacer(),
            Image.asset(
              "assets/sidebar_image.png",
              scale: 2,
            )
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;

  const DrawerListTile({Key key, this.title, this.icon, this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        icon,
        color: AppColor.white,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: AppColor.white),
      ),
    );
  }
}
