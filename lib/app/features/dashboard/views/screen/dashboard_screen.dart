library dashboard;

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app/app/constants/app_constant.dart';
import 'package:music_app/app/shared_components/shadow_image.dart';
import 'package:music_app/app/shared_components/sidebar_button.dart';

// bindings
part '../../bindings/dashboard_binding.dart';

// controllers
part '../../controllers/dashboard_controller.dart';
part '../../controllers/dashboard_play_music_controller.dart';

// models
part '../../models/dashboard_profile.dart';

// components
part '../components/bottom_navbar.dart';
part '../components/sidebar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 50),
          width: 300,
          child: _Sidebar()),
      bottomNavigationBar: _BottomNavbar(),
    );
  }
}
