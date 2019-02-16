import 'package:car_rental/constants/styles.dart';
import 'package:car_rental/ui/partials/glow_button.dart';
import 'package:car_rental/ui/partials/gradient_bg.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Type a city or airport name',
                    prefixIcon: Icon(Icons.location_on, color: Colors.white70, size: 20),
                    fillColor: Colors.white.withOpacity(0.05),
                    contentPadding: EdgeInsets.all(10),
                    focusedBorder: Styles.inputBorder,
                    enabledBorder: Styles.inputBorder,
                    border: Styles.inputBorder,
                    filled: true
                  ),
                ),
                SizedBox(height: 20),
                Text('RENTAL START', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, letterSpacing: 1)),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Pick a Date',
                          prefixIcon: Icon(Icons.calendar_today, color: Colors.white70, size: 20),
                          fillColor: Colors.white.withOpacity(0.05),
                          contentPadding: EdgeInsets.all(10),
                          focusedBorder: Styles.inputBorder,
                          enabledBorder: Styles.inputBorder,
                          border: Styles.inputBorder,
                          filled: true
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Pick a Time',
                          prefixIcon: Icon(Icons.access_time, color: Colors.white70, size: 20),
                          fillColor: Colors.white.withOpacity(0.05),
                          contentPadding: EdgeInsets.all(10),
                          focusedBorder: Styles.inputBorder,
                          enabledBorder: Styles.inputBorder,
                          border: Styles.inputBorder,
                          filled: true
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
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Pick a Date',
                          prefixIcon: Icon(Icons.calendar_today, color: Colors.white70, size: 20),
                          fillColor: Colors.white.withOpacity(0.05),
                          contentPadding: EdgeInsets.all(10),
                          focusedBorder: Styles.inputBorder,
                          enabledBorder: Styles.inputBorder,
                          border: Styles.inputBorder,
                          filled: true
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Pick a Time',
                          prefixIcon: Icon(Icons.access_time, color: Colors.white70, size: 20),
                          fillColor: Colors.white.withOpacity(0.05),
                          contentPadding: EdgeInsets.all(10),
                          focusedBorder: Styles.inputBorder,
                          enabledBorder: Styles.inputBorder,
                          border: Styles.inputBorder,
                          filled: true
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                GlowButton(
                  title: 'FIND YOUR CAR',
                  onTap: () {}
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
