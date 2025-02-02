import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> checkPermission(Permission permission, BuildContext context)async {
  final status= await permission.request();
  if(status.isGranted){
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Storage permission granted")));

  }
  else{
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Storage permission not granted")));
  }
}