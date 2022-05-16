import 'package:flutter/material.dart';
import 'package:travelapp/core/extensions/context_extension.dart';

class SavedView extends StatelessWidget {
  const SavedView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved View Page'),
      ),
      body: Container(
        height: context.h,
        width: context.h,
        color: Colors.red,
        
      ),
    );
  }
}