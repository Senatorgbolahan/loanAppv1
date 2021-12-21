import 'package:flutter/material.dart';

class LoginDetails extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage("assets/images/user.png"),
                            fit: BoxFit.cover,)
                            // shape: BoxShape.rectangle,
                            // image: DecorationImage(image: AssetImage("images/user.png"),
                            
                          ),
                          
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Efunkoya Omogbolahan", 
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 5,),
                            Text("omogbolahanefunkoya@lonne.com",
                            style: TextStyle(
                              fontSize: 10
                            ),),
                          ],
                        ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Icon(Icons.shopping_cart),
                  )
                ],
              ),
            ),
            SizedBox(height: 70,),
            Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                // color: Colors.blueAccent,
                image: DecorationImage(
                  image: AssetImage("assets/images/marketing.png",),fit: BoxFit.fill, ),
                   boxShadow: [
                    BoxShadow(
                      offset: Offset(3, 12),
                      blurRadius: 17,
                      spreadRadius: 33,
                      color: Colors.white.withOpacity(0.1)
                    )
                  ],
                  
                  border: Border.all(
                    // width: 0.1,
                    color: Colors.blueGrey,
                    style: BorderStyle.none,
                  ),
              ),
            ),
            SizedBox(height: 30,),
            Text("You seem to not have any loan",
             style: TextStyle(
               color: Colors.blueGrey,
               fontSize: 16
               ),),
              Text("plans active, request for your first",
              softWrap: true,
             style: TextStyle(
               color: Colors.blueGrey,
               fontSize: 17
               ),),
               Text("loan to get started.",
             style: TextStyle(
               color: Colors.blueGrey,
               fontSize: 17
               ),),

            SizedBox(height: 30,),
            Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.teal[300],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text("Request Loan", style: TextStyle(color: Colors.white,fontSize: 19, fontWeight: FontWeight.w600),), )),
                      SizedBox(height: 20,),
                     Text("Flexible and top rated loans powered by ", 
                style: TextStyle(
                  color: Colors.grey.shade400
                ),),
            SizedBox(height: 5,),
            Text("Lonne for your convenience",
            style: TextStyle(
                  color: Colors.grey.shade400
                ),),
          ]
          
          
        ),
        
    );
  }
}