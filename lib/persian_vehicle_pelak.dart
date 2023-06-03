library persian_vehicle_pelak;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersianVehiclePelak extends StatelessWidget {
  double? width = 200;
  double? height = 100;

  PersianVehiclePelak({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text('ایران'),
                Expanded(
                  child: Text('20'),
                )
              ],
            ),
            Text('262'),
            Text('ب'),
            Text('22'),
            Column(
              children: [Text('🇮🇷'), Text('IR'), Text('IRAN')],
            )
          ],
        ),
      ),
    );
  }
}
