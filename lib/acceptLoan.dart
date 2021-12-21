
import 'package:flutter/material.dart';

class AcceptLoan extends StatefulWidget {
  

  @override
  _AcceptLoanState createState() => _AcceptLoanState();
}

class _AcceptLoanState extends State<AcceptLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade600,
      body: SingleChildScrollView(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent.shade100,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.white.withOpacity(0.9),),
                  ),
              ),
            ]
        ),
      ),
    );
      
  }
}