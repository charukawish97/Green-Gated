import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/common/constants.dart';

class JanitorForm extends StatefulWidget {
  @override
  _JanitorFormState createState() => _JanitorFormState();
}

class _JanitorFormState extends State<JanitorForm> {
  final _formKey = GlobalKey<FormState>();
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.white, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Janitor Registration Form",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          nameTextFormField(context),
          nicTextFormField(context),
          rfidTextFormField(context),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              workDropdown(context),
              shiftDropdown(context),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                  color: AppColor.yellow,
                  borderRadius: BorderRadius.circular(100)),
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Text(
                "Save",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppColor.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget nameTextFormField(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 20, top: 5, bottom: 10),
      child: TextFormField(
        autocorrect: true,
        enableSuggestions: true,

        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        decoration: InputDecoration(
          focusedBorder: TextFormBorder.focusedBorder,
          enabledBorder: TextFormBorder.enabledBorder,
          //border: InputBorder.a,
          helperText: "Enter Janitor Full Name",
          helperStyle: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
          labelText: 'Janitor Name',
          labelStyle: TextStyle(
            fontSize: 14,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
          prefixIcon: Icon(
            Icons.person_outlined,
            size: 16,
            color: AppColor.focusColor,
          ),
        ),
        // ignore: missing_return
        validator: (value) {
          if (value.isNotEmpty) {
            return 'Please enter Janitor name';
          }
        },
        // onSaved: (val) =>
        //     setState(() => _user.firstName = val!),
      ),
    );
  }

  Widget rfidTextFormField(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 20, top: 5, bottom: 10),
      child: TextFormField(
        autocorrect: true,
        enableSuggestions: true,

        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        decoration: InputDecoration(
          focusedBorder: TextFormBorder.focusedBorder,
          enabledBorder: TextFormBorder.enabledBorder,
          //border: InputBorder.a,
          helperText: "Assign RFID",
          helperStyle: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
          labelText: 'RFID',
          labelStyle: TextStyle(
            fontSize: 14,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
          prefixIcon: Icon(
            Icons.credit_card,
            size: 16,
            color: AppColor.focusColor,
          ),
        ),
        // ignore: missing_return
        validator: (value) {
          if (value.isNotEmpty) {
            return 'Please assign a rfid for janitor';
          }
        },
        // onSaved: (val) =>
        //     setState(() => _user.firstName = val!),
      ),
    );
  }

  Widget nicTextFormField(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 20, top: 5, bottom: 10),
      child: TextFormField(
        autocorrect: true,
        enableSuggestions: true,

        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        decoration: InputDecoration(
          focusedBorder: TextFormBorder.focusedBorder,
          enabledBorder: TextFormBorder.enabledBorder,
          //border: InputBorder.a,
          helperText: "Enter employee NIC No",
          helperStyle: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
          labelText: 'National Idenitity',
          labelStyle: TextStyle(
            fontSize: 14,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
          prefixIcon: Icon(
            Icons.credit_card,
            size: 16,
            color: AppColor.focusColor,
          ),
        ),
        // ignore: missing_return
        validator: (value) {
          if (value.isNotEmpty) {
            return 'Please assign a NIC number';
          }
        },
        // onSaved: (val) =>
        //     setState(() => _user.firstName = val!),
      ),
    );
  }

  Widget shiftDropdown(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.only(left: 5, right: 20, top: 5, bottom: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
            decoration: InputDecoration(
              focusedBorder: TextFormBorder.focusedBorder,
              enabledBorder: TextFormBorder.enabledBorder,
              labelText: 'Choose Shift',
              labelStyle: TextStyle(
                fontSize: 14,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
              helperText: "Choose a Shift",
              helperStyle: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
            icon: Icon(
              Icons.pin_drop,
              color: AppColor.focusColor,
            ),
            value: _value,
            items: [
              DropdownMenuItem(
                child: Text(
                  "Morning-Shift",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text(
                  "Night-Shift",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 2,
              ),
            ],
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            }),
      ),
    );
  }

  Widget workDropdown(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.only(left: 5, right: 20, top: 5, bottom: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
            decoration: InputDecoration(
              focusedBorder: TextFormBorder.focusedBorder,
              enabledBorder: TextFormBorder.enabledBorder,
              labelText: 'Janitor Service',
              labelStyle: TextStyle(
                fontSize: 14,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
              helperText: "Choose a Janitor Service",
              helperStyle: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
            icon: Icon(
              Icons.pin_drop,
              color: AppColor.focusColor,
            ),
            value: _value,
            items: [
              DropdownMenuItem(
                child: Text(
                  "Gardening",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text(
                  "Cleaning",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text(
                  "Painting",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 3,
              ),
            ],
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            }),
      ),
    );
  }
}
