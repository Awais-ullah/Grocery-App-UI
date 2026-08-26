import 'package:flutter/material.dart';
import 'package:grocery_app/grocery_app/colors.dart';
import 'package:grocery_app/grocery_app/screens/home_page.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColors,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Column(

            children: [
              Image.asset('assets/images/food1.png',fit: BoxFit.cover,
              height: 180,
                width: 180,
              ),
              SizedBox(
                height: 25,
              ),
              Text('Fast delievery at\nyour doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Home delievery and online reservation\n  system for resturant and cafe',

                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,

                ),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                  },
                  child: Text('Lets Explore',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: primaryColors
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
