import 'package:flutter/material.dart';
import 'package:travelapp/core/extensions/context_extension.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile View Page'),
      ),
      body: Container(height: context.h,width: context.h,color: Colors.teal,),
      
    );
  }
}