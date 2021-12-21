import 'dart:ui';

import 'package:flutter/material.dart';

class LoanAmount extends StatefulWidget {
  

  @override
  _LoanAmountState createState() => _LoanAmountState();
}

class _LoanAmountState extends State<LoanAmount> {

  double tipPercentage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Icon(Icons.arrow_back)),
            ),
            SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Request Loan: Step 1",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Loan Amount",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Select the amount needed and the",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 7,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("reimbursement period",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: loanAmountTextField("Loan Amount"),
              ),
              SizedBox(height: 20,),
              Container(
                height: 500,
                width: 400,
                //  padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  // color: Colors.amber
                ),
                child: Column(
                  children: [
                    //loanAmountTextField(),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Text("$tipPercentage", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                         ),
                      ),
                      Container(
                        width: 250,
                        child: sliderAmount()),
                       Text("200", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                         ),
                       ),
                      
                      
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    yearsSelection(),
                    SizedBox(height: 20,),
                    loanAmountTextField("Interest Rate"),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 90,
                            height: 0.6,
                            color: Colors.grey,
                            // decoration: ,
                          ),
                          Text("Choose purpose of loan"),
                          Container(
                            width: 90,
                            height: 0.6,
                            color: Colors.grey,
                            // decoration: ,
                          ),
                        ],
                      ),
                      
                    ),
                    loanOption(),
                  ],
                  
                ),
              )
          ],
         ),
     )
    );
  }

  var loanTenure = [
      "Select Year",
      "1 year",
      "2 years",
      "3 years",
      "4 years",
      "5 years"
  ];

  Widget loanAmountTextField(String? hintTextt){
    return
        Container(
              height: 50,
              width: 350,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
               child: TextField(
                 keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                  hintText: hintTextt,
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  //icon: Icon(Icons.person, color: Colors.black,size: 20,),              
                ),
              ),
          );
  }
  

  Widget sliderAmount(){
    return Slider(
      min: 0,
      max: 200000,
      value: tipPercentage.toDouble(), 
      activeColor: Colors.green,
      inactiveColor: Colors.grey,
      divisions: 10,
      onChanged: (double valuee){
        setState(() {
          tipPercentage = valuee; 
        });
      },


    );
  }


  Widget loanOption(){
    return Container(
              height: 50,
              width: 350,
      child: Row(
        children: [
          RaisedButton(
            
            child: Text("For Business",
              style: TextStyle(color: Colors.green),
            ),
            onPressed: (){},
          
          )
        ],
      ),
    );
  }

  List<String> _locations = ['1 year', '2 years', '3 years', '4 years', "5 years"]; // Option 2
  String? _selectedLocation; 
  // String? newValue;// Option 2
  Widget yearsSelection(){
    return Container(
              height: 50,
              width: 350,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
      child: DropdownButton(
              //isExpanded: true,
              underline: Container(
                color: Colors.deepOrangeAccent,
              ),
             hint: Container(
               width: 300,
               padding: const EdgeInsets.only(left: 10),
              child: Text('Loan Tenure', style: TextStyle(color: Colors.grey),),), // Not necessary for Option 1
              value: _selectedLocation,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLocation = newValue;
                });
              },
              items: _locations.map((location) {
                return DropdownMenuItem(
                  
                  child: new Text(location, textAlign: TextAlign.right,),
                  
                  value: location,
                );
              }).toList(),
            ),
    );
        
  }
}