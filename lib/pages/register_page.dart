import 'package:flutter/material.dart';
import 'package:projecr_food_app/components/my_button.dart';
import 'package:projecr_food_app/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
final void Function()? onTap;

   RegisterPage({super.key,required this.onTap});

  //text editing controller
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
   final TextEditingController confirmPasswordController = TextEditingController();

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
         onTap: (){}
         
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
            onTap:onTap ,
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
    );
  }
}