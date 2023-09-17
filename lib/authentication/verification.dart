import 'package:electro_market/constants/constants.dart';
import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {


  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();
  TextEditingController txt6 = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
         backgroundColor: Constants.primaryColor,
         body: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                child: Column(
                  children: [    
               Container(
                    width: 150,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 234, 234, 243),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.lock_clock_outlined, size: 100, color: Constants.secondaryColor,)
                  ),
              
              Container(    
                 padding: EdgeInsets.only(top: deviceHeight(context) * 0.03),            
                 child: const Text(
                    "Verification",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Constants.quaternaryColor
                    ),
                   ),             
                   ),
                 Container(
                   padding: EdgeInsets.only(top: deviceHeight(context) * 0.02),  
                   child: const Text(
                    "Enter your OTP code number",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Constants.quaternaryColor
                    ),
                      ),
                   ),
                  
                  SizedBox(height: deviceHeight(context) * 0.03,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myInputBox(context, txt1,true,false),
                    myInputBox(context, txt2,false,false),
                    myInputBox(context, txt3,false,false),
                    myInputBox(context, txt4,false,true),
               
                  ],
                ),
                SizedBox(height: deviceHeight(context) * 0.03,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Haven't received OTP yet?",
                      style: TextStyle(fontSize: 18),
                    ),
                     const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                       
                      },
                      child: const Text(
                        "Resend",
                          style:  TextStyle(
                            color: Constants.tertiaryColor,
                            fontFamily: "Roboto",
                            fontSize: 20,
                          ),
                      ),
                    )                
                  ],
                ),
                 SizedBox(height: deviceHeight(context) * 0.1,),
                  SizedBox(
                       width: 350,
                       child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Constants.tertiaryColor,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),                  
                        onPressed: () async{
                            final otp = txt1.text + txt2.text + txt3.text + txt4.text;
                            if (otp == '1234') {
                                Navigator.pushNamed(context, "/login");
                            }else {
                                print("Wrong OTP");
                            }
                         },
                         child:  const Text(
                           "Verify",
                           style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: 'Poppins',
                           ),
                         ),
                        ),
                     ),
                  ],
                ),
              ),
            ),
            
          ],
         ),
    );
  }


  //field verification code
   Widget myInputBox(BuildContext context, TextEditingController controller,bool first, last) {
  return SizedBox(
    height: 100,
    width: 70,
    child: TextField(
      controller: controller,
      maxLength: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      autofocus: true,
      showCursor: false,
      readOnly: false,
      style: const TextStyle(fontFamily: "Roboto", fontSize: 42),
      decoration:  InputDecoration(
        counterText: '',
        border: InputBorder.none,
        counter: const Offstage(),
        enabledBorder: OutlineInputBorder(
         borderSide:const BorderSide(width: 2, color: Colors.black12),
         borderRadius: BorderRadius.circular(12)),
           focusedBorder: OutlineInputBorder(
                borderSide:const BorderSide(width: 2, color: Constants.secondaryColor),
                borderRadius: BorderRadius.circular(12)),
      ),
       onChanged: (value) {
          if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
      },
    ),
   );
   }
}