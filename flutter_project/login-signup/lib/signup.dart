import 'package:flutter/material.dart';

class signup extends StatelessWidget{
  signup({Key?key});

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override Widget build(BuildContext context){
    return Scaffold(
      body : Container(
        child : Center(
          child : Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children : [
                Image.asset("assets/images/login.jpeg", height: 200, width: 200,),
                Form(
                  key : formKey,
                  child: Column(
                    children: [
                           TextFormField(
                                validator: (value){
                          if(value == null || value.isEmpty){
                            return "Please enter the name";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("First-Name"),
                          //hint
                        ),
                           ),
                                 TextFormField(
                                validator: (value){
                          if(value == null || value.isEmpty){
                            return "Please enter the name";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("Last-Name"),
                          //hint
                        ),
                           ),
                      TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return "Please enter the email";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("Email"),
                          //hint
                        ),
                      ),
                      const SizedBox(height: 20,),
                      TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return "Please enter the password";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Text("password")
                        ),
                      ),
                      const SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                        if(formKey.currentState!.validate()){
                          print("Sign Success");
                        }else{
                          print("Sign Failed");
                        }
                      }, child: Text("sign"),),
                    ],
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}