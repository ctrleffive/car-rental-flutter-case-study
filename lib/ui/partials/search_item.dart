import 'package:car_rental/constants/styles.dart';
import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: Styles.appPadding,
      decoration: BoxDecoration(
        color: Styles.singleItemBg,
        borderRadius: BorderRadius.circular(3)
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Nukus Rent Card'),
                    Text('Nukus Rent Card'),
                  ],
                ),
              ),
              CircleAvatar(
                child: Column(
                  children: <Widget>[
                    Text('23'),
                    Text('23'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}