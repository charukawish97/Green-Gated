import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/common/constants.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  int _value = 1;
  int _valueblock = 1;
  int _valuefloor = 1;
  int _valuehouse = 1;

  // Use temp variable to only update color when press dialog 'submit' button
  ColorSwatch _tempMainColor;
  Color _tempShadeColor;
  ColorSwatch _mainColor = Colors.blue;
  Color _shadeColor = Colors.blue[800];

  void _openDialog(String title, Widget content) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 400, vertical: 200),
          contentPadding: const EdgeInsets.all(6.0),
          title: Text(title),
          content: content,
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColor.yellow,
                elevation: 3,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              child: Text('CANCEL'),
              onPressed: Navigator.of(context).pop,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColor.yellow,
                elevation: 3,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              child: Text('SUBMIT'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() => _mainColor = _tempMainColor);
                setState(() => _shadeColor = _tempShadeColor);
              },
            ),
          ],
        );
      },
    );
  }

  void _openFullMaterialColorPicker() async {
    _openDialog(
      "Full Material Color picker",
      MaterialColorPicker(
        colors: fullMaterialColors,
        selectedColor: _mainColor,
        onMainColorChange: (color) => setState(() => _tempMainColor = color),
      ),
    );
  }

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
                "User Info",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              firstTextFormField(context),
              lastnameTextFormField(context),
            ],
          ),
          Row(
            children: [
              nicTextFormField(context),
              livingDropdown(context),
            ],
          ),
          //rfidTextFormField(context),
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

  Widget lastnameTextFormField(BuildContext context) {
    return Container(
      width: 400,
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
          helperText: "Enter Last Name",
          helperStyle: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
          labelText: 'Last Name',
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
            return 'Please enter last name';
          }
        },
        // onSaved: (val) =>
        //     setState(() => _user.firstName = val!),
      ),
    );
  }

  Widget firstTextFormField(BuildContext context) {
    return Container(
      width: 400,
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
          helperText: "Enter First Name",
          helperStyle: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
          labelText: 'First Name',
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
            return 'Please enter first name';
          }
        },
        // onSaved: (val) =>
        //     setState(() => _user.firstName = val!),
      ),
    );
  }

  Widget rfidTextFormField(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: InkWell(
        onTap: _openFullMaterialColorPicker,
        child: Container(
          alignment: Alignment.center,
          //width: 300,
          padding: const EdgeInsets.symmetric(horizontal: 5),

          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColor.focusColor)),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select vehicle color",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: _mainColor,
                )
              ]),
        ),
      ),
    );
  }

  Widget nicTextFormField(BuildContext context) {
    return Container(
      width: 500,
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

  Widget livingDropdown(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.only(left: 5, right: 20, top: 5, bottom: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
            decoration: InputDecoration(
              focusedBorder: TextFormBorder.focusedBorder,
              enabledBorder: TextFormBorder.enabledBorder,
              labelText: 'House Rented',
              labelStyle: TextStyle(
                fontSize: 14,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
              helperText: "Choose your house is rented/ not",
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
                  "Yes",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text(
                  "No",
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
