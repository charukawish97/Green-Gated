import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/common/app_responsive.dart';

class RegisteredSecuirtyDetails extends StatefulWidget {
  @override
  _RegisteredSecuirtyDetailsState createState() =>
      _RegisteredSecuirtyDetailsState();
}

class _RegisteredSecuirtyDetailsState extends State<RegisteredSecuirtyDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.white, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Saved Security Members Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                  fontSize: 22,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColor.yellow,
                      borderRadius: BorderRadius.circular(100)),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: AppColor.white),
                  ),
                ),
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              /// Table Header
              TableRow(
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  )),
                ),
                children: [
                  tableHeader("ID"),
                  tableHeader("Secuirty Name"),
                  tableHeader("Shift"),
                  if (!AppResponsive.isMobile(context)) ...{
                    tableHeader("RFID"),
                    tableHeader("Date"),
                  },
                  // if (!AppResponsive.isMobile(context)) tableHeader(""),
                ],
              ),

              /// Table Data id, firstName, lastName, shift, rfid, date, image
              tableRow(
                context,
                id: "01",
                name: "Mary G Lolus",
                image: "assets/user1.jpg",
                shift: "Morning",
                rfid: "012*****324",
                date: "2021.05.02",
              ),
              tableRow(
                context,
                id: "02",
                name: "Mary G Lolus",
                image: "assets/user2.jpg",
                shift: "Morning",
                rfid: "012*****324",
                date: "2021.05.21",
              ),
              tableRow(
                context,
                id: "03",
                name: "Mary G Lolus",
                image: "assets/user3.jpg",
                shift: "Night",
                rfid: "012*****324",
                date: "2021.05.21",
              ),
              tableRow(
                context,
                id: "04",
                name: "Mary G Lolus",
                image: "assets/user2.jpg",
                shift: "Night",
                rfid: "012*****324",
                date: "2021.05.21",
              ),
              tableRow(
                context,
                id: "05",
                name: "Mary G Lolus",
                image: "assets/user1.jpg",
                shift: "Morning",
                rfid: "012*****324",
                date: "2021.05.21",
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Showing 5 out of 10 Results"),
                InkWell(
                  onTap: () {},
                  hoverColor: AppColor.hoverColor,
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  TableRow tableRow(context, {id, name, shift, rfid, date, image}) {
    return TableRow(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        children: [
          Text(id),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    image,
                    width: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(name),
              ],
            ),
          ),
          // Designation
          if (!AppResponsive.isMobile(context)) Text(shift),
          Text(rfid),
          Text(date),

          // Menu icon
          // if (!AppResponsive.isMobile(context))
          //   Image.asset(
          //     "assets/more.png",
          //     color: Colors.grey,
          //     height: 30,
          //   )
        ]);
  }

  Widget tableHeader(text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
      ),
    );
  }
}
