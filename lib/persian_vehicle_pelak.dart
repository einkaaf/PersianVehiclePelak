library persian_vehicle_pelak;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersianVehiclePelak extends StatelessWidget {
  double? width = 200;
  double? height = 100;

  PersianVehiclePelak({super.key, this.width, this.height});

  final Widget iranSVG = SvgPicture.asset(
      'packages/persian_vehicle_pelak/assets/images/iran-light.svg');

  final Widget flagVG = SvgPicture.asset(
      'packages/persian_vehicle_pelak/assets/images/iran-flag.svg');

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 200,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.fromBorderSide(
                  BorderSide(color: Colors.black),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 2), child: iranSVG),
                  const Expanded(
                      child: Center(
                          child: Text(
                    '10',
                    style: TextStyle(fontSize: 24),
                  )))
                ],
              ),
            ),
            Expanded(
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    '222',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'سلام چطوری ؟',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily:
                            'packages/persian_vehicle_pelak/assets/fonts/Regular.ttf'),
                  ),
                  Text(
                    '23',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily:
                            'packages/persian_vehicle_pelak/assets/fonts/Bold.ttf'),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 0, 52, 154)),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 2), child: flagVG),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
