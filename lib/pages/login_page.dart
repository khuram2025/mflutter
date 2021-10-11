import 'package:flutter/material.dart';
import 'package:mfluter/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  String name = "";

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }


  @override

  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset("assets/images/login.png", fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text(
              "Welcome $name", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter Username"
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value){
                      name = value;
                      setState(() {

                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password"
                    ),
                    validator: (value){
                      if (value!.isEmpty){
                        return "Password cannot be empty ";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),

            InkWell(
              onTap: () => moveToHome(context),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                alignment: Alignment.center,
                width: changeButton?50:  150,
                height: 40,

                child: changeButton?Icon(Icons.done, color: Colors.white,): Text("Login", style: TextStyle(
                  color: Colors.white, fontSize: 18,
                ),),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton?50: 8.0)
                ),
              ),
            )



            // ElevatedButton(onPressed: (){
            //   Navigator.pushNamed(context, MyRoutes.homeRoute);
            // },
            //     style:TextButton.styleFrom(
            //       minimumSize: Size(150, 40)
            //     ),child: Text("Login"))


          ],

        ),
      )
    );
  }
}
