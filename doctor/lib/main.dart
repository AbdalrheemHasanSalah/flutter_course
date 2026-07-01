import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'theme/theme_notifier.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectedDate = DateTime.now();
  int currentPageIndex = 0;

  Widget lable(String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(name.tr(), style: TextStyle(fontSize: 24)),
    );
  }

  Widget textInputField(String hintText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintText: hintText.tr(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 40, 43, 240),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'welcome_text'.tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24, color: Colors.blueAccent),
              ),

              lable('patient_name'),
              textInputField('enter_patient_name'),

              lable('age'),
              textInputField('enter_age'),

              lable('consultation_fees'),
              textInputField('enter_consultation_fees'),

              lable('date_time'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DateTimeFormField(
                  decoration: InputDecoration(labelText: 'enter_date'.tr()),
                  firstDate: DateTime.now().add(const Duration(days: -40)),
                  lastDate: DateTime.now().add(const Duration(days: 40)),
                  initialPickerDateTime: DateTime.now().add(
                    const Duration(days: 0),
                  ),
                  onChanged: (DateTime? value) {
                    selectedDate = value!;
                  },
                ),
              ),

              lable('formal_report'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'enter_formal_report'.tr(),
                  ),
                ),
              ),

              lable('common_terms'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'enter_common_terms'.tr(),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black87,
                    backgroundColor: Colors.grey[300],
                    minimumSize: const Size(88, 36),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                    elevation: 0,
                  ),
                  child: Text('save_button'.tr()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
