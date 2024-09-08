// ignore_for_file: use_build_context_synchronously, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:projecr_food_app/components/my_button.dart';
import 'package:projecr_food_app/components/my_textfield.dart';
import 'package:projecr_food_app/pages/home_page.dart';
import 'package:projecr_food_app/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
final void Function()? onTap;

   const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controller
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

   final TextEditingController confirmPasswordController = TextEditingController();

  //register methode
  void register() async {
    //get auth service
    final _authService = AuthService();

    //check if password match -> create user
    if(passwordController.text == confirmPasswordController.text){
      //try creating user
      try{
        await _authService.signInWithEmailPassword(
          emailController.text, 
          passwordController.text);
          if(mounted){
            Navigator.pushReplacement(
              context,MaterialPageRoute(
                builder: (context) => const HomePage() ),
                 );
          }
      }
      //show any error
      catch(e){
        showDialog(
          context: context, 
          builder: (context) => AlertDialog(title: Text(e.toString()),
          ),
          );

      }
    }

    //if password dont mathc show error
    else{
       showDialog(
          context: context, 
          builder: (context) => const AlertDialog(
            title: Text("Password don't match"),
          ),
          );
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
              //logo
            Icon(
              Icons.lock_open,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            
            const SizedBox(height: 25,),
            //message,app slogan
            Text(
              "Lets creat an account for u",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            
             const SizedBox(height: 25,),
            
            //email textfield
            MyTextfield(controller: emailController,
             hintText:"Email",
              obscureText: false),
            
             const SizedBox(height: 25,),
            //password textfield
             MyTextfield(controller: passwordController,
             hintText:"Password",
              obscureText: true,
              ),
            
               const SizedBox(height: 25,),
            
                //confirm password textfield
             MyTextfield(controller: confirmPasswordController,
             hintText:"Confirm Password",
              obscureText: true,
              ),
            
               const SizedBox(height: 25,),
            
            //sign up button
            MyButton(text: "Sign up",
             onTap: register,
             
             ),
            
             const SizedBox(height: 25,),
            
            // already have an account? Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Already have an account? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    
                  ),
                ),
                const SizedBox(width: 4,),
               GestureDetector(
                onTap:widget.onTap ,
                 child: Text(
                    "Login now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
               ),
              ],
            ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}