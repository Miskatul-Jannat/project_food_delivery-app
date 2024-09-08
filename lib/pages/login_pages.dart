// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:projecr_food_app/components/my_button.dart';
import 'package:projecr_food_app/components/my_textfield.dart';

import 'package:projecr_food_app/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
final void Function()? onTap;

   const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  //login method
  void login() async{
    //get instance of auth service
    final _authService=AuthService();

    //try sign in
    try{
      await _authService.signInWithEmailPassword(emailController.text,passwordController.text);
    }

    //display error
    catch(e){
       showDialog(
          context: context, 
          builder: (context) => AlertDialog(title: Text(e.toString()),
          ),
          );
    }
    
  }

  //forgot password
  void fprgotPw(){
    showDialog(
      context: context,
       builder: (context) =>AlertDialog(
        // ignore: deprecated_member_use
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("User tapped forgot password"),
       ),
       );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //logo
        Icon(
          Icons.lock_open_rounded,
          size: 100,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        
        const SizedBox(height: 25,),
        //message,app slogan
        Text(
          "Food devivery App",
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
        
        //sign in button
        MyButton(text: "Sign in",
         onTap: login, ),

         const SizedBox(height: 25,),

        //not a member?register now
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Not a member?",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                
              ),
            ),
            const SizedBox(width: 4,),
           GestureDetector(
            onTap:widget.onTap ,
             child: Text(
                "Register now",
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
    );
  }
}