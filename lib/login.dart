import 'package:flutter/material.dart';


class Mylogin extends StatefulWidget {

  @override
  _MyloginState createState() => _MyloginState();
}

bool _toggleVisibility = true;

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Text("lonne",
      //     style: TextStyle(
      //       color: Colors.teal[400],
      //       fontSize: 25,
      //       fontFamily: "STIXTwoText",
      //       fontStyle: FontStyle.italic,
      //       fontWeight: FontWeight.w900
      //     ),
      //   ),
      // ),
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
            SizedBox(height: 50,),
            Text("Welcome back!", 
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),),
              SizedBox(height: 20,),
            Text("Sign in to access your account.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 40,),
            // Card(
            //   elevation: 5,
          
              //child: 
              Container(
                height: 300,
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
                    SizedBox(height: 50,),
                     myPhoneNoTextField(),
                     SizedBox(height: 10,),
                     myPasswordTextField(),
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
                      SizedBox(height: 10,),
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
}