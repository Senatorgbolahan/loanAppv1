import 'package:flutter/material.dart';

class LoginDetails extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 30),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Text("Madi Sloane"),
                      Text("Madi Sloane"),
                    ],
                  ),
                  Icon(Icons.shopping_cart)
                  
                ],
              ),
              
            ),
            
          ],
        ),
    );
  }
}