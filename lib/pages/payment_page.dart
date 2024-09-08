import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:projecr_food_app/components/my_button.dart';
import 'package:projecr_food_app/pages/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
String cardNumber = '';
String expiryDate = '';
String cardHolderName = '';
String cvvCode = '';
bool isCvvFocused = false;

//user wants to pay
void userTappedPay(){
  if(formKey.currentState!.validate()){
    //only show dialog if form is valid
    showDialog(
      context: context, 
      builder: (context)=>  AlertDialog(
        title: const Text("Confirm payment"),
       content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text("Card number: $cardNumber "),
            Text("Expiry date: $expiryDate"),
            Text("Card holder naame: $cardHolderName"),
            Text("Cvv: $cvvCode"),

          ],
        ),
       ),
       actions: [
        //cancel button
        TextButton(onPressed: () =>Navigator.pop(context),
         child:const Text("Cancell"),
         ),

        //yes button
         TextButton(onPressed: (){
        Navigator.pop(context);
          Navigator.push(
          context,MaterialPageRoute(
            builder: (context)=>const DeliveryProgressPage(),
            ),
            );
         },
         child:const Text("Yes"),
         ),
       ], 
      ));
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background ,
      appBar: AppBar(
        
       backgroundColor: Colors.transparent,
       title: const Text("CHECKOUT"), 
      ),
     body: Column(
      children: [
        //credit card
        CreditCardWidget(
        cardNumber: cardNumber,
        expiryDate: expiryDate, 
        cardHolderName: cardHolderName, 
        cvvCode: cvvCode, 
        showBackView: isCvvFocused, 
        onCreditCardWidgetChange:(p0) {},
        ),
    
        //credit cart form
        CreditCardForm(
          cardNumber: cardNumber, 
          expiryDate: expiryDate, 
          cardHolderName: cardHolderName,
           cvvCode: cvvCode, 
           onCreditCardModelChange: (data) {
            setState(() {
              cardNumber=data.cardNumber;
              expiryDate=data.expiryDate;
              cardHolderName=data.cardHolderName;
              cvvCode=data.cvvCode;
            });
    
           }, 
          formKey: formKey,
          ),
        const Spacer(),
    
        MyButton(
          text: "Pay now", 
          onTap:userTappedPay,
        ),
    
        const SizedBox(height: 25,),  
      ],
     ), 
    );
  }
}