import 'package:flutter/material.dart';

import 'home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // logo
              Image.asset("assets/images/logo.png",color: Theme.of(context).colorScheme.tertiary,),

              SizedBox(height: 20),

              // title
              Text(
                "Just do it",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              SizedBox(height: 30),

              // subtitle
              Text(
                "Brand new Sneakers and custom kicks made with premium quality",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 40),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(child: Text('Shop Now!',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold),)),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
