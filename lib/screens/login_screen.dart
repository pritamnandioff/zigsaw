import 'package:flutter/material.dart';
import 'package:zigsaw/const.dart';
import 'package:zigsaw/screens/home_screen.dart';
import 'package:zigsaw/utils/custom_button.dart';
import 'package:zigsaw/utils/input_decoration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  String? validateMobile(String value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  String? validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: CircleAvatar(
                  radius: 30, child: Image.asset("assets/icon.png")),
            ),
          ),
          Form(
            key: _formkey,
            child: Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(kDefaultpadding),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(kDefaultpadding),
                      topLeft: Radius.circular(kDefaultpadding)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: kLtext, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: kDefaultpadding,
                    ),
                    TextFormField(
                      validator: (value) => validateMobile(value!),
                      keyboardType: TextInputType.phone,
                      decoration: buildInputDecoration(
                          Icons.phone_outlined, "Mobile number"),
                    ),
                    const SizedBox(
                      height: kDefaultpadding,
                    ),
                    TextFormField(
                      validator: (value) => validatePassword(value!),
                      obscureText: true,
                      decoration:
                          buildInputDecoration(Icons.lock_outline, "Password"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 112, 3)),
                          ),
                        )
                      ],
                    ),
                    MyElevatedButton(
                      width: double.infinity,
                      height: 50,
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      },
                      borderRadius: BorderRadius.circular(kDefaultpadding),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: kStext),
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultpadding,
                    ),
                    MyElevatedButton(
                      onPressed: () {},
                      borderRadius: BorderRadius.circular(kDefaultpadding),
                      child: Text(
                        "Login with OTP",
                        style: TextStyle(fontSize: kStext),
                      ),
                      width: double.infinity,
                      height: 50,
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(193, 48, 51, 217),
                          Color.fromARGB(255, 21, 10, 148),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultpadding * 2,
                    ),
                    const Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Didn\'t have a account ', // default text style
                          children: [
                            TextSpan(
                              text: 'Sign up now',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 112, 3),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
