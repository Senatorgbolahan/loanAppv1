import 'package:flutter/material.dart';
// import 'package:loanapp/acceptLoan.dart';
import 'package:loanapp/businessDetail.dart';
import 'package:loanapp/loanAmount.dart';
// import 'package:loanapp/login.dart';
import 'package:loanapp/loginDetails.dart';
// import 'package:loanapp/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        // primarySwatch: Colors.blue,
      ),
      // home: Mylogin(),
      // home: LoginDetails(),
      // home: MyRegistration(),
      home: LoanAmount(),
      // home: BusinessDetails(),
      // home: AcceptLoan(),
    );
  }
}

