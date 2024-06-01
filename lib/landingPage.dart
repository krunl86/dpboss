import 'dart:developer';

import 'package:dpboss/constValues.dart';
import 'package:dpboss/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final m930am = TextEditingController();
  final m1030am = TextEditingController();
  final m1130am = TextEditingController();
  final m1230pm = TextEditingController();
  final m0130pm = TextEditingController();
  final m0230pm = TextEditingController();
  final m0330pm = TextEditingController();
  final m0430pm = TextEditingController();
  final m0530pm = TextEditingController();
  final m0630pm = TextEditingController();
  final m0730pm = TextEditingController();
  final m0830pm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              row1(theme),
              row2(),
              row3(),
              row4(),
              row5(),
              row6(),
              ElevatedButton(
                  onPressed: () {
                    createRecord();
                  },
                  child: const Text('Add Record')),
            ],
          ),
        ),
      ),
    );
  }

  Widget row1(ThemeData theme) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '10:00 AM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m930am,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            ),
              const SizedBox(
                    width: 20,
                  ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '04:00 PM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m0330pm,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget row2() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '11:00 AM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m1030am,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            ),
              const SizedBox(
                    width: 20,
                  ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '05:00 PM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m0430pm,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget row3() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '12:00 AM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m1130am,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            ),
              const SizedBox(
                    width: 20,
                  ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '06:00 PM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m0530pm,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget row4() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '01:00 PM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m1230pm,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            ),
              const SizedBox(
                    width: 20,
                  ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '07:00 PM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m0630pm,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget row5() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '02:00 PM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m0130pm,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            ),
              const SizedBox(
                    width: 20,
                  ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '08:00 PM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m0730pm,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget row6() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '03:00 PM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m0230pm,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            ),
              const SizedBox(
                    width: 30,
                  ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '09:00 PM',
                      style: textstyle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: m0830pm,
                      inputFormatters: [
                        DigitAndHyphenInputFormatter(),
                        LengthLimitingTextInputFormatter(7)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  void createRecord() async {
    try {
      final DatabaseReference kDatabase = FirebaseDatabase.instance.ref();

      kDatabase.child('data').set({
        StringConst.moring_9_30_am: m930am.text,
        StringConst.moring_10_30_am: m1030am.text,
        StringConst.moring_11_30_am: m1130am.text,
        StringConst.afernoon_12_30_pm: m1230pm.text,
        StringConst.afernoon_01_30_pm: m0130pm.text,
        StringConst.afernoon_02_30_pm: m0230pm.text,
        StringConst.afernoon_03_30_pm: m0330pm.text,
        StringConst.afernoon_04_30_pm: m0430pm.text,
        StringConst.evening_05_30_pm: m0530pm.text,
        StringConst.evening_06_30_pm: m0630pm.text,
        StringConst.evening_07_30_pm: m0730pm.text,
        StringConst.evening_08_30_pm: m0830pm.text,
      });
        m930am.clear();
        m1030am.clear();
        m1130am.clear();
        m1230pm.clear();
        m0130pm.clear();
       m0230pm.clear();
       m0330pm.clear();
       m0430pm.clear();
       m0530pm.clear();
       m0630pm.clear();
       m0730pm.clear();
       m0830pm.clear();


      Fluttertoast.showToast(
        msg: "Data Updated Successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    } catch (e) {
      log(e.toString());
    }
  }

  TextStyle textstyle = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red);
}
