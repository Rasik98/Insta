import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:insta/utils/routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/BG.jpg'),
            fit: BoxFit.fill
            ),
        ),
        alignment: Alignment.center,
        child: Container(
          height: 500,
          width: 350,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(20)
            ),
            
            child:ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:  BackdropFilter(filter: ImageFilter.blur
              (sigmaX: 4, sigmaY: 4),
              child: Column(
                children: [

                  const SizedBox(height: 60),
                  
                  Image.asset("assets/images/insta.png",
                      width: 200, color: Colors.white
                      ),

                      const SizedBox(height: 60),

                  Padding(padding: const EdgeInsets.symmetric
                  (horizontal: 32.0, vertical: 16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.white),
                          labelStyle: const TextStyle(color: Colors.white),
                          hintText: "Enater Username",
                          labelText: "Username",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.white,width: 3)
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                            ),
                        ),
                      ),


                      const SizedBox(height: 10),
                      

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.white),
                          labelStyle: const TextStyle(color: Colors.white),
                          hintText: "Enater Password",
                          labelText: "Password",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.white,width: 3)
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)
                            ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 10,),
                          const Text("Remember  Me,  FORGET PASSWORD",
                          style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      const SizedBox(height: 40),
                      
                      Center(
                        child: InkWell(
                          onTap:() async {
                            setState(() {
                              changeButton = true;
                            });
                            await Future.delayed(const Duration(seconds: 1));
                            Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changeButton? 50 : 150,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(changeButton? 50 : 20),
                            ),
                            child: Center(
                              child: changeButton? const Icon(Icons.done, size: 35,
                              color: Colors.deepPurple,) : const Text("Login",
                              style: TextStyle(color: Colors.deepPurple,
                                fontSize: 25,fontFamily: 'Fontasset',
                                fontWeight: FontWeight.bold,
                              ),
                             ),
                            ),
                        ),
                        ),
                      ),
                    ],
                  ),
                  )
                ],
              ),
              ),
            ),
        ),
      ),
    );
  }
}