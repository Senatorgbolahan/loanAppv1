import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class BusinessDetails extends StatefulWidget {
  

  @override
  _BusinessDetailsState createState() => _BusinessDetailsState();
}

class _BusinessDetailsState extends State<BusinessDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.arrow_back),
                  ),
              ),
              SizedBox(height: 24,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Request Loan: Step 2",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Business Detail",
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
                  child: Text("Enter your business information below",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      businessNameTextField(),
                      SizedBox(height: 15,),
                      businessAddressTextField(),
                      SizedBox(height: 15,),
                      uploadBankStatement(),
                      SizedBox(height: 15,),
                      Text("Please make sure you upload a .PDF or .PNG whose size is",
                        style: TextStyle(
                              color: Colors.grey.shade400,
                              
                        ),
                      ),
                      Text("not more than 2MB",
                        style: TextStyle(
                              color: Colors.grey.shade400,
                        ),
                      ),
                      SizedBox(height: 130,),
                      requestLoanButton(),
                    ],
                  ),
                ),
                
                // SizedBox(height: 20,),
            ],),
      ),
      
      
    );
  }

  Widget  requestLoanButton(){
    return Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.teal[400],
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text("Request Loan",  style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
            
            ),)));
  }

  Widget businessNameTextField(){
    return
        Container(
              height: 60,
              width: 350,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
               child: TextField(
                //  obscureText: true,
                  decoration: InputDecoration(
                  hintText: "Business Name",
                  // labelText: "Business Name",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  // icon: Icon(Icons.person, color: Colors.black,size: 20,),              
                ),
              ),
          );
  }

    Widget businessAddressTextField(){
    return
        Container(
              height: 60,
              width: 350,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
               child: TextField(
                //  obscureText: true,
                  decoration: InputDecoration(
                  hintText: "Business Address",
                  // labelText: "Business Name",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  // icon: Icon(Icons.person, color: Colors.black,size: 20,),              
                ),
              ),
          );
  }

  Widget uploadBankStatement(){
      return DottedBorder(
        borderType: BorderType.Rect,
        strokeWidth: 2,
        dashPattern: [6],
        child: Container(
            height: 50,
            width: 330,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              // border: Border.all(
              //   color: Colors.blue,
              //   style: BorderStyle.solid
              //   )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.cloud_upload,
                  color: Colors.black.withOpacity(0.7),
                ),
                SizedBox(width: 10,),
                Text("click to upload bank statement", 
                style: TextStyle(
                  fontSize: 10
                ),),
              ],
            ),
        ),
      );

  }


}