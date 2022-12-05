
import 'package:email_validation_test/validator_class.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class MyHomePage extends StatefulWidget {
   const MyHomePage({Key? key}) : super(key: key);
 

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
   final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
 final  GlobalKey<FormState> _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title:const Text("Login Here"),),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _key,
            child: Column(children: [
              TextFormField(
                validator: (value){
                  return
                  Validator.validateEmail(value??"");
                },
                key:const ValueKey("email_id"),
                decoration:const InputDecoration(
                  
                  
                  hintText: "Enter Email id",
          
          
                ),
                controller: _emailController,
              ),
               TextFormField(
                validator: ((value) {
                  return
                  Validator.validatePassword(value??"");
                }),
                key:const ValueKey("password"),
                controller: _passwordController,
                decoration:const InputDecoration(
                  
                  hintText: "Enter password",
          
          
                ),
              ),
             const SizedBox(height: 50,),
              ElevatedButton(onPressed: (){

                if(_key.currentState?.validate()==true)
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                }
               

              }, child:const Text("click to log in"))
              
            ],),
          ),
        ),
      ),
    );
    
  }
}