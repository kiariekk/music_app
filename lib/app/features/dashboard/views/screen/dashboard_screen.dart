library dashboard;

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:music_app/app/constants/app_constant.dart';
import 'package:music_app/app/shared_components/card_music.dart';
import 'package:music_app/app/shared_components/shadow_image.dart';
import 'package:music_app/app/shared_components/sidebar_button.dart';
import 'package:music_app/app/utils/helper/extension.dart';

// bindings
part '../../bindings/dashboard_binding.dart';

// controllers
part '../../controllers/dashboard_controller.dart';
part '../../controllers/dashboard_play_music_controller.dart';

// models
part '../../models/dashboard_album.dart';
part '../../models/dashboard_music.dart';
part '../../models/dashboard_profile.dart';

// components
part '../components/bottom_navbar.dart';
part '../components/header.dart';
part '../components/popular_music.dart';
part '../components/recommended_album.dart';
part '../components/sidebar.dart';
part '../components/top_music.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("music app"),
    ));
  }
}
