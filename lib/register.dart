import 'package:flutter/material.dart';


class MyRegistration extends StatefulWidget {

  @override
  _MyRegistrationState createState() => _MyRegistrationState();
}

bool _toggleVisibility = true;

class _MyRegistrationState extends State<MyRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 80),
                // padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 70),
                child: Text("lonne",
                style: TextStyle(
                  color: Colors.teal[400],
                  fontSize: 25,
                  fontFamily: "STIXTwoText",
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900
                ),
          ),
              ),
            ),
            SizedBox(height: 30,),
            Text("Register", 
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),),
              SizedBox(height: 20,),
            Text("Registration takes few minutes.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 30,),
            // Card(
            //   elevation: 5,
          
              //child: 
              Container(
                height: 400,
                width: 350,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 0.1,
                    color: Colors.blueGrey,
                    style: BorderStyle.solid,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(3, 12),
                      blurRadius: 17,
                      spreadRadius: 33,
                      color: Colors.white
                    )
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter, 
                    colors: [
                      Colors.white.withOpacity(0.9),
                      Colors.white.withOpacity(0.5)
                      ],
                    ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    // myUsernameTextField(),
                    // SizedBox(height: 10,),
                    myFullnameTextField(),
                    SizedBox(height: 10,),
                     myPhoneNoTextField(),
                     SizedBox(height: 10,),
                     myPasswordTextField(),
                     SizedBox(height: 10,),
                     myConfirmPasswordTextField(),
                     SizedBox(height: 30,),
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.teal[400],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text("Sign In", style: TextStyle(color: Colors.white),))),
                      SizedBox(height: 10,),
                      Text("Don't have an account?"),
                      SizedBox(height: 6,),
                      Text("Create Account", style: TextStyle(
                        color: Colors.amber.shade800,
                        fontSize: 15,
                      ),)
                    
                  ],
                ),
                
                
                
              ),
              SizedBox(height: 50,),
            Text("Flexible and top rated loans powered by ", 
                style: TextStyle(
                  color: Colors.grey.shade400
                ),),
            SizedBox(height: 5,),
            Text("Lonne for your convenience",
            style: TextStyle(
                  color: Colors.grey.shade400
                ),),
          ],
        ),
      ),
    );
  }
   Widget myUsernameTextField(){
    return
        Container(
              height: 50,
              width: 300,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
               child: TextField(
                  decoration: InputDecoration(
                  hintText: "Username",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  icon: Icon(Icons.phone, color: Colors.black,size: 20,),              
                ),
              ),
          );
  }

   Widget myFullnameTextField(){
    return
        Container(
              height: 50,
              width: 300,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
               child: TextField(
                  decoration: InputDecoration(
                  hintText: "Full name",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  icon: Icon(Icons.person, color: Colors.black,size: 20,),              
                ),
              ),
          );
  }

  Widget myPhoneNoTextField(){
    return
        Container(
              height: 50,
              width: 300,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
               child: TextField(
                  decoration: InputDecoration(
                  hintText: "Phone number",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  icon: Icon(Icons.phone, color: Colors.black,size: 20,),              
                ),
              ),
          );
  }

  Widget myPasswordTextField(){
    return  Container(
          height: 50,
          width: 300,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),        
          ),
          child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 15.0
                    ),
                    icon: Icon(Icons.lock, color: Colors.black,size: 20,),    
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _toggleVisibility = !_toggleVisibility;
                        });
                      },
                      icon: _toggleVisibility ? Icon(Icons.visibility_off, size: 20, color: Colors.black,) : Icon(Icons.visibility)),
                    ),
                  obscureText: _toggleVisibility,
                    ),
                  );
  }

Widget myConfirmPasswordTextField(){
    return  Container(
          height: 50,
          width: 300,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),        
          ),
          child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Retype Password",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 15.0
                    ),
                    icon: Icon(Icons.lock, color: Colors.black,size: 20,),    
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _toggleVisibility = !_toggleVisibility;
                        });
                      },
                      icon: _toggleVisibility ? Icon(Icons.visibility_off, size: 20, color: Colors.black,) : Icon(Icons.visibility)),
                    ),
                  obscureText: _toggleVisibility,
                    ),
                  );
  }
}