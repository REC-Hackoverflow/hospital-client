import 'package:cilent_hospital/pages/themes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
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
                autofocus: true,
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
                autofocus: true,
                // controller: passwordTextController,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(0, 0, 5, 20),
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
                height: 16,
              ),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.centerRight,
                  child: const Text(
                    'Recover password',
                    style: TextStyle(
                      color: AppColors.textFadedLightMode,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  // loginuser(
                  //         emailTextController.text, passwordTextController.text)
                  //     .then((value) {
                  //   print('---');
                  //   print(value);
                  //   if (value != null) {
                  //     Navigator.pushNamed(context, '/');
                  //   }
                  // });
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
                    "Sign in",
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
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('register_page');
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
                    "Register",
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
              Text(
                "error",
                style: TextStyle(
                  color: Colors.red,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
