import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Myslider extends StatefulWidget {
  const Myslider({super.key});

  @override
  State<Myslider> createState() => _MysliderState();
}

class _MysliderState extends State<Myslider> {
 double _value = 40.0;

@override
Widget build(BuildContext context) {
  return Scaffold(
     body: SfSlider(
       min: 0.0,
       max: 50.0,
       value: _value,
       interval: 5,
       showTicks: true,
       showLabels: true,
       enableTooltip: true,
       minorTicksPerInterval: 1,
       onChanged: (dynamic value){
         setState(() {
           _value = value;
         });
       },
     ),
   );
}}