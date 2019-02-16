import 'package:flutter/material.dart';
import 'package:car_rental/ui/search_list.dart';
import 'package:car_rental/constants/styles.dart';
import 'package:car_rental/models/form_data/search.dart';
import 'package:car_rental/ui/partials/glow_button.dart';
import 'package:car_rental/ui/partials/gradient_bg.dart';
import 'package:car_rental/ui/partials/custom_input.dart';

class Home extends StatelessWidget {
  final GlobalKey<FormState> _searchFormKey = GlobalKey<FormState>();
  final SearchData _data = SearchData();

  @override
  Widget build(BuildContext context) {
    return GradientBg(
      scaffold: Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: Styles.appPadding,
            child: Form(
              key: this._searchFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 150,
                  ),
                  SizedBox(height: 30),
                  Text('Easy & Experienced\nWay to Rent a Car', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    height: 1.1
                  )),
                  SizedBox(height: 25),
                  CustomInput(
                    icon: Icons.location_on,
                    hintText: 'Type a city or airport name',
                    onSave: (String value) => this._data.location = value,
                  ),
                  SizedBox(height: 20),
                  Text('RENTAL START', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, letterSpacing: 1)),
                  SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: CustomInput(
                          hintText: 'Pick a Date',
                          icon: Icons.calendar_today,
                          onTap: () async {
                            final DateTime startDate = await showDatePicker(
                              context: context,
                              firstDate: DateTime.now(),
                              initialDate: DateTime.now(),
                              lastDate: DateTime.now(),
                              initialDatePickerMode: DatePickerMode.day,
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 15),
                      Flexible(
                        child: CustomInput(
                          hintText: 'Pick a Time',
                          icon: Icons.access_time,
                          onTap: () async {
                            final TimeOfDay startTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now()
                            );
                          },
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('RENTAL END', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, letterSpacing: 1)),
                  SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: CustomInput(
                          hintText: 'Pick a Date',
                          icon: Icons.calendar_today,
                          onTap: () async {
                            final DateTime startDate = await showDatePicker(
                              context: context,
                              firstDate: DateTime.now(),
                              initialDate: DateTime.now(),
                              lastDate: DateTime.now(),
                              initialDatePickerMode: DatePickerMode.day,
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 15),
                      Flexible(
                        child: CustomInput(
                          hintText: 'Pick a Time',
                          icon: Icons.access_time,
                          onTap: () async {
                            final TimeOfDay startTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now()
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  GlowButton(
                    title: 'FIND YOUR CAR',
                    onTap: () {
                      this._searchFormKey.currentState.save();
                      if (this._searchFormKey.currentState.validate()) {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (_) => SearchList()
                        ));
                      }
                    }
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
