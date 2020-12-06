import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/Screens/HomeScreen/home_screen.dart';
import 'package:grocery/Screens/SignUpScreen/signup.dart';
import 'package:grocery/Screens/rounded_button.dart';
import 'package:grocery/constants.dart';
import 'Components/rounded_input_field.dart';
import 'Components/rounded_password.dart';
import 'Components/textfield_container.dart';

class LoginScreen extends StatelessWidget {
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
                    'Sign In',
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
                  hintText: "Enter User ID",
                  onchanged: (value) {},
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
                color: kPrimaryColor,
                width: size.width * 0.8,
                text: 'SIGN IN',
                textColor: Colors.white,
                press: () {},
              ),
              SizedBox(height: 10.0),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
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
                  SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text(
                      "New User? Please SignUp",
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
