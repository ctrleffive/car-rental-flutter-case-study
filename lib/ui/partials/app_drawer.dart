import 'package:car_rental/constants/styles.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).accentColor.withOpacity(0.8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              child: Text('Pristine Cars'),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: Styles.appPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('data')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  } 
}