
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logintask/modules/home/discover.dart';
import 'package:logintask/shared/components/components.dart';

class LoginTask extends StatefulWidget {
  @override
  _LoginTaskState createState() => _LoginTaskState();
}

class _LoginTaskState extends State<LoginTask> {
  bool valueFirst=false;
  var name="";
  bool isPassword =true;
  var emailController=TextEditingController();
  var nameController=TextEditingController();

  var passwordController=TextEditingController();
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(      ),
      body: _buildContent(),
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
    );
  }

  Widget _buildContent(){
    return Padding(

        padding: const EdgeInsets.all(20.0),

      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset(
                  'images/shopping.png',
                width: 70,
                height: 70,
              ),

              Text(
                "Buy It",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'cursive',
                ),
              ),
              SizedBox(height:10.0),
              defaultFormField(
                controller:nameController,
                prefix: Icons.drive_file_rename_outline,
                label: 'Enter your name',
                fontSize: 20.0,
                iconColor: Colors.orange.shade600,
                type: TextInputType.text,
                validate: (String value){
                    if(value.isEmpty){
                      return 'email must not be empty';
                    }
                    return null;
                  }

              ),
              SizedBox(height:10.0),

            defaultFormField(
              prefix: Icons.email,
              label: 'Enter your email',
              fontSize: 20.0,
              iconColor: Colors.orange.shade600,
              type: TextInputType.emailAddress,
              controller:emailController,
              validate: (String value){
                if(value.isEmpty){
                  return 'email must not be empty';
                }
                return null;
              }
            ),
              SizedBox(height:10.0),
              defaultFormField(
                controller: passwordController,
                prefix: Icons.lock,
                label: 'Enter your password',
                fontSize: 20.0,
                iconColor: Colors.orange.shade600,
                suffix: isPassword? Icons.visibility:Icons.visibility_off,
                isPassword: isPassword,
                suffixPressed: (){
                  setState(() {
                    isPassword=!isPassword;
                  });
                },
                 type: TextInputType.visiblePassword,
                  validate: (String value){
                    if(value.isEmpty){
                      return 'Password is too short';
                    }
                    return null;
                  }
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Checkbox(
                  activeColor: Colors.black,
                      value: this.valueFirst,
               //     checkColor: Colors.orange,
                    onChanged: (bool value){
                        setState(() {
                          this.valueFirst=value;
                        });
                    },
                  ) ,
                  Text(
                      'Remember Me',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                  ),


                ],
              ),
              SizedBox(height: 10),
             defaultButton(
                 background: Colors.black,
                 fontColor:Colors.white ,
                 fontSize: 20.0,
                 text: 'Login',
               function: (){
                 showAlertDialog(context,nameController.text);
                 if(formKey.currentState.validate()){

                   print(emailController.text);
                   print(passwordController.text);

                 }
               },
             ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  TextButton(onPressed: (){},
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      )),

                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  defaultButton(
                    text: 'Admin',
                    background: Colors.black,
                    fontColor:Colors.white,
                    function:() {print('sama');}
                  ),
                  SizedBox(width: 30.0),
          defaultButton(
              text: 'user',
              background: Colors.grey[400],
              fontColor:Colors.black,
              function:() {print('sama');}
          ),

                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
showAlertDialog(BuildContext context, var name) {
  if(name!=""){
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context)=> DiscoverPage(),
          ));
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Welcome message",
        style: TextStyle(color: Colors.green, fontSize: 30,fontWeight: FontWeight.bold )),


    content: Text("Hello $name",
        style: TextStyle(color: Colors.black,fontSize: 25),),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );}
  else{
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("ALERT",

        style: TextStyle(color: Colors.red, fontSize: 30,fontWeight: FontWeight.bold )),

      content: Text("Please enter your name",
      style: TextStyle(color: Colors.black,fontSize: 25),),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}