import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';

class OwnerDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all()),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  "assets/user3.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Winston Jude",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("House Owner"),
                ],
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          profileListTile("House ID", "01_02_04"),
          profileListTile("DOB", "1995-09-06"),
          profileListTile("RFID No", "123****90"),
          profileListTile("Email", "dwinstonjude@gmail.com"),
          profileListTile("Registered", "2021-01-25"),
          profileListTile("Phone No", "077-5951714"),
        ],
      ),
    );
  }

  Widget profileListTile(text, value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Text(
            value,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
          ),
        ],
      ),
    );
  }
}
