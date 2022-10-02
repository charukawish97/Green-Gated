import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/common/app_responsive.dart';

class RegisteredOwnerDetails extends StatefulWidget {
  @override
  _RegisteredOwnerDetailsState createState() => _RegisteredOwnerDetailsState();
}

class _RegisteredOwnerDetailsState extends State<RegisteredOwnerDetails> {
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
                "Saved House Owner Details",
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
                  tableHeader("FirstName"),

                  if (!AppResponsive.isMobile(context)) ...{
                    tableHeader("HouseNo"),
                    tableHeader("Email"),
                    tableHeader("RFID"),
                    tableHeader("Date"),
                    tableHeader("Operation"),
                  },
                  // if (!AppResponsive.isMobile(context)) tableHeader(""),
                ],
              ),

              /// Table Data id, firstName, lastName, shift, rfid, date, image
              tableRow(
                context,
                id: "01",
                name: "Mary",
                image: "assets/user1.jpg",
                houseId: "01",
                email: "ma***@gmail.com",
                rfid: "012*****324",
                date: "2021.05.02",
              ),
              tableRow(
                context,
                id: "02",
                name: "Lolus",
                image: "assets/user2.jpg",
                houseId: "04",
                email: "lo***@gmail.com",
                rfid: "012*****324",
                date: "2021.05.21",
              ),
              tableRow(
                context,
                id: "03",
                name: "Sachithra",
                image: "assets/user3.jpg",
                houseId: "03",
                email: "dwin***@gmail.com",
                rfid: "012*****324",
                date: "2021.05.21",
              ),
              tableRow(
                context,
                id: "04",
                name: "Mavidu",
                image: "assets/user2.jpg",
                houseId: "01",
                email: "rat***@gmail.com",
                rfid: "012*****324",
                date: "2021.05.21",
              ),
              tableRow(
                context,
                id: "05",
                name: "Winston",
                image: "assets/user1.jpg",
                houseId: "04",
                email: "dwin***@gmail.com",
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

  TableRow tableRow(context, {id, name, houseId, email, rfid, date, image}) {
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
                Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          // Designation
          if (!AppResponsive.isMobile(context)) Text(houseId), Text(email),
          Text(rfid),
          Text(date),

          //Menu icon
          if (!AppResponsive.isMobile(context))
            Row(children: [
              TextButton(
                child: Text('Update',
                    style: TextStyle(color: AppColor.updateColor)),
                onPressed: () {},
              ),
              SizedBox(
                width: 6,
              ),
              TextButton(
                child:
                    Text("Delete", style: TextStyle(color: Colors.redAccent)),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return Container(
                          width: 500,
                          padding: EdgeInsets.all(10),
                          child: AlertDialog(
                              elevation: 5,
                              backgroundColor: AppColor.focusColor,
                              title: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.warning_outlined,
                                        size: 36, color: Colors.red),
                                    SizedBox(height: 40),
                                    Text(
                                      "Delete House Owner Info!!!",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              content: Container(
                                color: AppColor.focusColor,
                                height: 70,
                                child: Column(
                                  children: [
                                    Text(
                                      "Are you sure want to delete?",
                                      style: TextStyle(
                                        color: AppColor.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton.icon(
                                            icon: Icon(
                                              Icons.close,
                                              size: 16,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                primary: AppColor.yellow),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            label: Text("Cancel")),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        ElevatedButton.icon(
                                            icon: Icon(
                                              Icons.delete,
                                              size: 14,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                primary: AppColor.deleteColor),
                                            onPressed: () {},
                                            label: Text("Delete"))
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        );
                      });
                },
              )
            ]),
        ]);
  }

  // Widget alertMessage(context) {
  //   return Container(
  //     child:
  //   );
  // }

  Widget tableHeader(text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
      ),
    );
  }

  // Widget showDialog(BuildContext context){

  // }
}
