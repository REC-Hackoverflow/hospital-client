import 'package:cilent_hospital/pages/home.dart';
import 'package:cilent_hospital/pages/themes.dart';
import 'package:flutter/material.dart';

class Records extends StatefulWidget {
  final String name, email, password, phno;

  const Records(
      {Key? key,
      required this.name,
      required this.email,
      required this.password,
      required this.phno})
      : super(key: key);

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  TextEditingController BGController = TextEditingController();
  TextEditingController BPController = TextEditingController();
  TextEditingController sugarController = TextEditingController();
  TextEditingController openController = TextEditingController();
  String selectedValue = '';
  List<String> items = [
    'no',
    'yes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
          child: Form(
            child: ListView(
              children: [

                TextFormField(
                  autofocus: true,
                  controller: BGController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Your Blood group',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: BPController,

                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Your BP Level',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: sugarController,

                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Your Blood glucose Level',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Are you alcoholic?"),
                DropdownButton(
                  hint: selectedValue == null
                      ? Text('select')
                      : Text(
                          selectedValue,
                          style: TextStyle(color: Colors.blue),
                        ),
                  isExpanded: true,
                  iconSize: 30.0,
                  style: TextStyle(color: Colors.blue),
                  items: ['Yes', 'NO'].map(
                    (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    setState(
                      () {
                        selectedValue = val.toString();
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autofocus: true,
                  controller: openController,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Anything more?',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
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
              ],
            ),
          )),
    );
  }
}
