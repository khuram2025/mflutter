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

  @override

  Widget build(BuildContext context) {
    return Material(
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
                  onChanged: (value){
                    value = name;
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
                ),
              ],
            ),
          ),

          InkWell(
            onTap: () async {
             setState(() {
               changeButton = true;
             });
             await Future.delayed(Duration(seconds: 1));
             Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
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

      )
    );
  }
}
