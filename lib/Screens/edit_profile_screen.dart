import 'package:flutter/material.dart';
import 'package:quiz_flutter/Widgets/appbars.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({ Key? key }) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(),
    );
  }
}