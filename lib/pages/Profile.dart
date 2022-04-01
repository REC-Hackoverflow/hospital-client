import 'package:flutter/material.dart';
import 'package:cilent_hospital/pages/themes.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: const Text('Your Profile'),
          centerTitle: true,
          backgroundColor: AppColors.primary,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: ListView(
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundColor: AppColors.secondary,
                  radius: 60.0,
                ),
              ),
              const Divider(
                height: 60.0,
                color: AppColors.secondary,
              ),
              const Text(
                'Name',
                style: TextStyle(
                    color: AppColors.textFadedLightMode, fontSize: 18),
              ),
              const Text(
                'kumar',
                style: TextStyle(color: AppColors.textLightMode, fontSize: 36),
              ),
              SizedBox(height: 10),
              const Text(
                'Age - Place',
                style: TextStyle(
                    color: AppColors.textFadedLightMode, fontSize: 18),
              ),
              const Text(
                '50 - Chennai',
                style: TextStyle(color: AppColors.textLightMode, fontSize: 36),
              ),
              SizedBox(height: 10),
              const Text(
                'Patient Details',
                style: TextStyle(
                    color: AppColors.textFadedLightMode, fontSize: 18),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.cardLightMode,
                      border: Border.all(color: AppColors.background),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  height: 300,
                ),
              )
            ],
          ),
        ));
  }
}
