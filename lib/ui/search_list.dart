import 'package:car_rental/constants/styles.dart';
import 'package:car_rental/ui/partials/gradient_bg.dart';
import 'package:car_rental/ui/partials/search_item.dart';
import 'package:flutter/material.dart';

class SearchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GradientBg(
      scaffold: Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent.withOpacity(0),
            brightness: Brightness.dark,
            elevation: 0,
          ),
          SliverFillViewport(
            delegate: SliverChildListDelegate([
              Padding(
                padding: Styles.appPadding,
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('8 Fleets Available', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        height: 1.1,
                      )),
                      SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on, size: 17, color: Colors.white70),
                          SizedBox(width: 5),
                          Text('8 Fleets Available', style: TextStyle(color: Colors.white70)),
                          SizedBox(width: 10),
                          Icon(Icons.calendar_today, size: 17, color: Colors.white70),
                          SizedBox(width: 5),
                          Text('23 - 26 August', style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                      SizedBox(height: 35),
                      Column(
                        children: <Widget>[
                          SearchItem(),
                          SearchItem(),
                          SearchItem(),
                          SearchItem(),
                        ],
                      ),
                    ],
                  ),
                )
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}