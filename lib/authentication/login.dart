import 'package:electro_market/constants/constants.dart';
import 'package:electro_market/provider/hidden_password.dart';
import 'package:electro_market/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  Widget build(BuildContext context) {

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
  final passwordVisibilityProvider = Provider.of<HiddenPassword>(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Constants.secondaryColor,
                Constants.quaternaryColor                    
              ])
            ),
            child: Padding(
              padding: EdgeInsets.only(top: deviceHeight(context) * 0.1, left: deviceWidth(context) * 0.06),
              child: const Text(
                "Welcome back,\nLogin",
                style: TextStyle(
                  fontSize: 30,
                  color: Constants.primaryColor,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Positioned(
            child: Padding(
              padding: EdgeInsets.only(top: deviceHeight(context) * 0.25),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  color: Constants.primaryColor
                ),
                  height: double.infinity,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(left: deviceWidth(context) *0.1, right: deviceWidth(context) * 0.1),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [                         
                           SizedBox(height: deviceHeight(context) * 0.09,),
                           TextField(
                            decoration: inputDecorationAuthorization.copyWith(
                              suffixIcon: const Icon(Icons.email, color: Constants.secondaryColor,),
                              label: const Text(
                                "Email",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                  color: Constants.secondaryColor
                                ),
                              )
                            ),
                          ),
                            SizedBox(height: deviceHeight(context) * 0.01,),
                          TextField(
                            obscureText: !passwordVisibilityProvider.isPasswordVisible,
                            decoration: inputDecorationAuthorization.copyWith(
                              suffixIcon: InkWell(
                                onTap: () {
                                   passwordVisibilityProvider.togglePasswordVisibility();
                                },
                                child: Icon(
                                  passwordVisibilityProvider.isPasswordVisible?
                                  Icons.visibility_off : 
                                  Icons.visibility, 
                                  color: Constants.secondaryColor,   
                                  ),
                              ),
                              label: const Text(
                                "Password",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                  color: Constants.secondaryColor,
                                  fontSize: 18
                                ),
                              )
                            ),
                          ),
                     SizedBox(height: deviceHeight(context) * 0.01,),
                              
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password", 
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                              ),
                            ),
                          ),
                              
                           SizedBox(height: deviceHeight(context) * 0.1,),
                              
                          Container(
                            height: 55,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Constants.tertiaryColor
                            ),
                            child: const Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Constants.primaryColor
                                ),
                              ),
                            ),
                          ),
                              
                     SizedBox(height: deviceHeight(context) * 0.15,),
                              
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  "Don't have account?", 
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(context, '/register');
                                  },
                                  child: const Text(
                                    "Sign Up", 
                                    style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Constants.quaternaryColor
                                    ),
                                  ),
                                ),
                              ],
                            )
                          )
                        ],
                      ),
                    ),
                  ) 
              ),
            ),
          ),
        ],
      ),
    );
  }
}