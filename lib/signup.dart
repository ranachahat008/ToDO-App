
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/dashboard.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome !',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(60),
                  color: Colors.blue.shade100
                ),
                child: Icon(Icons.person,color: Colors.white,size: 90,),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19.0,right: 19),
                child: TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please enter your email";
                    }
                    return null;
                  },
                  textAlign: TextAlign.center,
             decoration: InputDecoration(
               suffixIcon: Padding(
                 padding: const EdgeInsets.only(right: 24.0),
                 child: Icon(Icons.email_outlined,size: 28),
               ),
               filled: true,
               fillColor: Colors.white,
                 border: OutlineInputBorder(
                   borderSide: BorderSide.none,
                   borderRadius: BorderRadius.circular(30)),
               hintText: "Example@gmail.com",
             ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19.0,right: 19),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(CupertinoIcons.lock,size: 30,),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "*********",
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: 260,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()));}, child: Text("Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){}, child: Text("Forgot password?",
                  style: TextStyle(
                    color: Colors.white,
                    // decoration: TextDecoration.underline
                  ),)),
                  TextButton(onPressed: (){}, child: Text("SIGN UP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    decoration: TextDecoration.underline
                  ),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
