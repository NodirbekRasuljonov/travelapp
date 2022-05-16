import 'package:flutter/material.dart';
import 'package:travelapp/core/extensions/context_extension.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reservation View Page'),
      ),
        body: Container(
        color: Colors.amber,
        height: context.h,
        width: context.h,
        
      ),
    );
  }
}