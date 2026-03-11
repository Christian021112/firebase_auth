import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          child: Column(
            children: [
              const SizedBox(height: 150),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn.prod.website-files.com/66e70ebe4f137113dd7019b2/673735fdfc88277db9455f7c_Frame%2019.png",
                    ),
                  ),
                ),
                height: 100,
                width: 100,
              ),

              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "create your account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Email",
                  filled: true,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "password",
                  filled: true,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Confirm password",
                  filled: true,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),

                  child: Text("Login", style: TextStyle(fontSize: 18)),
                ),
              ),
              const SizedBox(height: 20),
              Text("-Or singin up with-"),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // centre horizontalement
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
                  ),

                  SizedBox(width: 20),

                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.blue,
                    ),
                  ),

                  SizedBox(width: 20),

                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text("Don't have an account? Sign up"),
            ],
          ),
        ),
      ),
    );
  }
}
