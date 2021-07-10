
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginTask extends StatefulWidget {
  @override
  _loginTaskState createState() => _loginTaskState();
}

class _loginTaskState extends State<loginTask> {
  bool valueFirst=false;
  var name="";
 // var emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildContent(),
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
    );
  }

  Widget _buildContent(){
    return Padding(

        padding: const EdgeInsets.all(20.0),

      child: SingleChildScrollView(
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
            TextFormField(
              cursorColor: Colors.white,
              onFieldSubmitted: (value){ name=value; print(value);},
             // autofocus: true,

              decoration: InputDecoration(
                labelText: "Enter your name",
                labelStyle: TextStyle(
                  fontSize: 18.0,

                ),

                fillColor: Colors.white70.withOpacity(0.3),
                filled: true,
                prefixIcon: Icon(
                  Icons.drive_file_rename_outline,
                  color: Colors.orange.shade600,
                  size: 25.0,
                ),
                enabledBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    color: Colors.white.withOpacity(0.2),
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.white.withOpacity(0.3),
                    width: 2.0,
                  ),

                ),
              ),
            ),
            SizedBox(height:10.0),

            TextFormField(
              onFieldSubmitted: (value){ name=value; print(value);},
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                labelText: "Enter your email",
                labelStyle: TextStyle(
                  fontSize: 18.0,

                ),

                fillColor: Colors.white70.withOpacity(0.3),
                filled: true,
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.orange.shade600,
                 size: 25.0,
                ),
                enabledBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    color: Colors.white.withOpacity(0.2),
                    width: 2.0,
                  ),
                  ),
                focusedBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.white.withOpacity(0.3),
                    width: 2.0,
                  ),

                ),
              ),
            ),
            SizedBox(height:10.0),
            TextFormField(
              keyboardType:TextInputType.visiblePassword,
             // autofocus: true,
              onFieldSubmitted: (value){ name=value; print(value);},


              obscureText: true,
              decoration: InputDecoration(
                labelText: "Enter your password",
                labelStyle: TextStyle(
                  fontSize: 18.0,
                ),

                fillColor: Colors.white70.withOpacity(0.3),
                filled: true,
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.orange.shade600,
                ),
                enabledBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    color: Colors.white.withOpacity(0.2),
                    width: 2.0,
                  ),



                ),
                focusedBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.white.withOpacity(0.3),
                    width: 2.0,
                  ),

                ),

              ),
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
            SizedBox(
              width: 150.0,
              height: 35.0,
              child: RaisedButton(
                  child: Text(
                      "Login",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),),
                color: Colors.black,

                onPressed: (){
                  showAlertDialog(context,name);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),

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

                SizedBox(
                  width: 150.0,
                  height: 35.0,
                  child: RaisedButton(
                    child: Text(
                      "Admin",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    color: Colors.black,

                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                ),
                SizedBox(width: 30.0),
                SizedBox(
                  width: 150.0,
                  height: 35.0,
                  child: RaisedButton(
                    child: Text(
                      "User",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    color: Colors.grey.shade700,

                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                ),

              ],
            )
          ],
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
      Navigator.of(context).pop();
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