import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/Screens/HomeScreen/home_screen.dart';
import 'package:grocery/Screens/LoginScreen/Components/rounded_input_field.dart';
import 'package:grocery/Screens/LoginScreen/Components/rounded_password.dart';
import 'package:grocery/Screens/LoginScreen/Components/textfield_container.dart';
import 'package:grocery/Screens/LoginScreen/login.dart';
import 'package:grocery/Screens/rounded_button.dart';
import 'package:grocery/constants.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                loginsvg,
                height: size.height * 0.15,
              ),
              SizedBox(height: 15.0),
              Column(
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Please enter your credentials',
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              TextFieldContainer(
                width: size.width * 0.8,
                child: RoundedInputField(
                  hintText: "Enter User Name",
                  onchanged: (value) {},
                ),
              ),
              TextFieldContainer(
                width: size.width * 0.8,
                child: RoundedInputField(
                  hintText: "Enter Mobile Number",
                  icon: Icons.mobile_screen_share_rounded,
                ),
              ),
              TextFieldContainer(
                width: size.width * 0.8,
                child: RoundedInputField(
                  hintText: "Enter Email ID",
                  icon: Icons.mail,
                ),
              ),
              TextFieldContainer(
                width: size.width * 0.8,
                child: RoundedPasswordField(
                  onchanged: (value) {},
                ),
              ),
              SizedBox(height: 5.0),
              RoundedButton(
                width: size.width * 0.8,
                color: kPrimaryColor,
                text: 'SIGN UP',
                textColor: Colors.white,
                press: () {},
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60.0,
                ),
                child: Row(
                  children: [
                    Text(
                      "Already Registered?",
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
