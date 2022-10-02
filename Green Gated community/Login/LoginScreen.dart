import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/common/constants.dart';

import '../home_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      // drawer: SideBar(),
      // key: Provider.of<MenuController>(context, listen: false).scaffoldKey,
      //backgroundColor: AppColor.bgSideMenu,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   scale: 4,
          //   fit: BoxFit.fitWidth,
          //   image: AssetImage(
          //     "image.jpg",
          //   ),
          // ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.3, 0.5, 0.7, 0.9],
            colors: [
              Color(0xff131e29),
              Color(0xff131e35),
              Color(0xff131f42),
              Color(0xff131e57),
              Color(0xff131f64),
              // Colors.yellow[800],
              // Colors.yellow[700],
              // Colors.yellow[600],
              // Colors.yellow[400],
              // Colors.yellow[300],
            ],
          ),
        ),
        child: LoginBody(),
      ),
    );
  }
}

class LoginBody extends StatefulWidget {
  const LoginBody({
    Key key,
  }) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool valuefirst = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1100,
        height: 650,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.white,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "assets/logo_gatedCommunity.png",
                width: 200,
                height: 100,
              ),
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    "assets/13202.jpg",
                    width: 500,
                    height: 450,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 500,
                  width: 580,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                      //color: AppColor.bgSideMenu.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Welcome Back :)",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColor.loginborder,
                                fontSize: 28,
                                letterSpacing: 1.2),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "To keep connected with us please login with your personal information by \nemail address and password...",
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: AppColor.black,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        emailTextFormField(context),
                        passwordTextFormField(context),

                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: AppColor.bgSideMenu,
                                ),
                                child: Checkbox(
                                  focusColor: Colors.teal,
                                  checkColor: AppColor.white,
                                  activeColor: AppColor.bgSideMenu,
                                  value: this.valuefirst,
                                  onChanged: (bool value) {
                                    setState(() {
                                      this.valuefirst = value;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Remember Me",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.loginborder,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 300,
                              decoration: BoxDecoration(
                                  color: AppColor.bgSideMenu,
                                  borderRadius: BorderRadius.circular(100)),
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              child: Text(
                                "Sign In",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Have you forgot your password?"),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text("Click here",
                                  style: TextStyle(
                                      color: AppColor.bgSideMenu,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )

                        // Image.asset(
                        //   "assets/21_02_Data-security_2.jpg",
                        //   width: 200,
                        //   height: 200,
                        // ),
                      ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget emailTextFormField(BuildContext context) {
    return Container(
      width: 550,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: TextFormField(
        autocorrect: true,
        enableSuggestions: true,

        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        decoration: InputDecoration(
          focusedBorder: TextFormBorder.focusedloginBorder,
          enabledBorder: TextFormBorder.enabledloginBorder,
          //border: InputBorder.a,
          hintText: "Enter email address",
          hintStyle: TextStyle(
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
            Icons.mail,
            size: 18,
            color: AppColor.focusColor,
          ),
        ),
        // ignore: missing_return
        validator: (value) {
          if (value.isEmpty) {
            return 'Plean enter an email address';
          }
        },
        // onSaved: (val) =>
        //     setState(() => _user.firstName = val!),
      ),
    );
  }

  Widget passwordTextFormField(BuildContext context) {
    return Container(
      width: 550,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: TextFormField(
        autocorrect: true,
        enableSuggestions: true,

        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        decoration: InputDecoration(
          focusedBorder: TextFormBorder.focusedloginBorder,
          enabledBorder: TextFormBorder.enabledloginBorder,
          //border: InputBorder.a,
          hintText: "Enter your password",
          hintStyle: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
          labelText: 'Password',
          labelStyle: TextStyle(
            fontSize: 14,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
          prefixIcon: Icon(
            Icons.lock,
            size: 18,
            color: AppColor.focusColor,
          ),
        ),
        // ignore: missing_return
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter a password';
          }
        },
        // onSaved: (val) =>
        //     setState(() => _user.firstName = val!),
      ),
    );
  }
}


// TextButton(
//     onPressed: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => HomePage()),
//       );
//     },
//     child: Text("Login"))
