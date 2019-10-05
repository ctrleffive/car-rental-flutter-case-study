import 'package:flutter/material.dart';
import 'package:car_rental/ui/search_list.dart';
import 'package:car_rental/constants/styles.dart';
import 'package:car_rental/models/form_data/search.dart';
import 'package:car_rental/ui/partials/glow_button.dart';
import 'package:car_rental/ui/partials/gradient_bg.dart';
import 'package:car_rental/ui/partials/custom_input.dart';
import 'package:rxdart/subjects.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  final GlobalKey<FormState> _searchFormKey = GlobalKey<FormState>();
  final BehaviorSubject<String> _startDateStream = BehaviorSubject<String>();
  final BehaviorSubject<String> _startTimeStream = BehaviorSubject<String>();
  final BehaviorSubject<String> _endDateStream = BehaviorSubject<String>();
  final BehaviorSubject<String> _endTimeStream = BehaviorSubject<String>();
  final SearchData _data = SearchData();

  @override
  void dispose() {
    _startDateStream.close();
    _startTimeStream.close();
    _endDateStream.close();
    _endTimeStream.close();
    super.dispose();
  }

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
                    height: 1.1,
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
                        child: StreamBuilder(
                          initialData: 'Pick a Date',
                          stream: this._startDateStream.stream,
                          builder: (_, AsyncSnapshot<String> startDateSnapshot) => CustomInput(
                            hintText: startDateSnapshot.data,
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
                      ),
                      SizedBox(width: 15),
                      Flexible(
                        child: StreamBuilder(
                          initialData: 'Pick a Time',
                          stream: this._startTimeStream.stream,
                          builder: (_, AsyncSnapshot<String> startTimeSnapshot) => CustomInput(
                            hintText: startTimeSnapshot.data,
                            icon: Icons.access_time,
                            onTap: () async {
                              final TimeOfDay startTime = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now()
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('RENTAL END', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, letterSpacing: 1)),
                  SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: StreamBuilder(
                          initialData: 'Pick a Date',
                          stream: this._endDateStream.stream,
                          builder: (_, AsyncSnapshot<String> endDateSnapshot) => CustomInput(
                            hintText: endDateSnapshot.data,
                            icon: Icons.calendar_today,
                            onTap: () async {
                              final DateTime endDate = await showDatePicker(
                                context: context,
                                firstDate: DateTime.now(),
                                initialDate: DateTime.now(),
                                lastDate: DateTime.now(),
                                initialDatePickerMode: DatePickerMode.day,
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Flexible(
                        child: StreamBuilder(
                          initialData: 'Pick a Time',
                          stream: this._endTimeStream.stream,
                          builder: (_, AsyncSnapshot<String> endTimeSnapshot) => CustomInput(
                            hintText: endTimeSnapshot.data,
                            icon: Icons.access_time,
                            onTap: () async {
                              final TimeOfDay endTime = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now()
                              );
                            },
                          ),
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
