import 'package:cilent_hospital/pages/home.dart';
import 'package:cilent_hospital/pages/records.dart';
import 'package:cilent_hospital/pages/themes.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(60, 100, 60, 50),
                child: const Text(
                  "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textLightMode),
                ),
              ),
              TextField(
                // controller: nameTextController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter Yourname name',
                  prefixIcon: Icon(
                    Icons.verified_user_rounded,
                    color: AppColors.textLightMode,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                // controller: emailTextController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: AppColors.textLightMode,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter password',
                  prefixIcon: Icon(
                    Icons.password,
                    color: AppColors.textLightMode,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                // controller: passwordTextController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter Phone number ',
                  prefixIcon: Icon(
                    Icons.phone,
                    color: AppColors.textLightMode,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Records()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
