import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/common/constants.dart';

class OwnerRegistrationForm extends StatefulWidget {
  @override
  _OwnerRegistrationFormState createState() => _OwnerRegistrationFormState();
}

class _OwnerRegistrationFormState extends State<OwnerRegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  int _valueblock = 1;
  int _valuefloor = 1;
  int _valuehouse = 1;

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
                "House Owner Registration Form",
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
          emailTextFormField(context),
          rfidTextFormField(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              blockDropdown(context),
              floorDropdown(context),
              houseDropdown(context),
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
          helperText: "Enter HouseOwner FirstName",
          helperStyle: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
          labelText: 'House Owner FirstName',
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
            return 'Please enter house owner name';
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
          helperText: "Assign RFID ",
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
            return 'Please assign a rfid for security';
          }
        },
        // onSaved: (val) =>
        //     setState(() => _user.firstName = val!),
      ),
    );
  }

  Widget emailTextFormField(BuildContext context) {
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
          helperText: "Add Email address",
          helperStyle: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
          labelText: 'Email Address',
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
            return 'Email Address is Empty';
          }
        },
        // onSaved: (val) =>
        //     setState(() => _user.firstName = val!),
      ),
    );
  }

  Widget blockDropdown(BuildContext context) {
    return Container(
      width: 230,
      padding: const EdgeInsets.only(left: 5, right: 20, top: 5, bottom: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
            decoration: InputDecoration(
              focusedBorder: TextFormBorder.focusedBorder,
              enabledBorder: TextFormBorder.enabledBorder,
              labelText: 'Block No',
              labelStyle: TextStyle(
                fontSize: 14,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
              helperText: "Choose a Block",
              helperStyle: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
            icon: Icon(
              Icons.pin_drop,
              color: AppColor.focusColor,
            ),
            value: _valueblock,
            items: [
              DropdownMenuItem(
                child: Text(
                  "Block-01",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text(
                  "Block-02",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 2,
              ),
            ],
            onChanged: (value) {
              setState(() {
                _valueblock = value;
              });
            }),
      ),
    );
  }

  Widget floorDropdown(BuildContext context) {
    return Container(
      width: 230,
      padding: const EdgeInsets.only(left: 5, right: 20, top: 5, bottom: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
            decoration: InputDecoration(
              focusedBorder: TextFormBorder.focusedBorder,
              enabledBorder: TextFormBorder.enabledBorder,
              labelText: 'Floor No',
              labelStyle: TextStyle(
                fontSize: 14,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
              helperText: "Choose a Floor no",
              helperStyle: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
            icon: Icon(
              Icons.pin_drop,
              color: AppColor.focusColor,
            ),
            value: _valuefloor,
            items: [
              DropdownMenuItem(
                child: Text(
                  "Floor-01",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text(
                  "Floor-02",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text(
                  "Floor-03",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 2,
              ),
            ],
            onChanged: (value) {
              setState(() {
                _valuefloor = value;
              });
            }),
      ),
    );
  }

  Widget houseDropdown(BuildContext context) {
    return Container(
      width: 230,
      padding: const EdgeInsets.only(left: 5, right: 20, top: 5, bottom: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
            decoration: InputDecoration(
              focusedBorder: TextFormBorder.focusedBorder,
              enabledBorder: TextFormBorder.enabledBorder,
              labelText: 'House No',
              labelStyle: TextStyle(
                fontSize: 14,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
              helperText: "Choose a House no",
              helperStyle: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
            icon: Icon(
              Icons.pin_drop,
              color: AppColor.focusColor,
            ),
            value: _valuehouse,
            items: [
              DropdownMenuItem(
                child: Text(
                  "House-01",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text(
                  "House-02",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text(
                  "House-03",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 2,
              ),
            ],
            onChanged: (value) {
              setState(() {
                _valuehouse = value;
              });
            }),
      ),
    );
  }
}
