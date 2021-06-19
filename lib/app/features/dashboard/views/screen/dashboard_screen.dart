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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kPaddingContent),
          child: Row(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  child: _Sidebar(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Flexible(
                flex: 15,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kPaddingContent),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _Header(),
                      SizedBox(height: kPaddingContent),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SizedBox(height: kPaddingContent),
                              _TopMusic(),
                              SizedBox(height: kPaddingContent * 2),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(flex: 1, child: _PopularMusic()),
                                  SizedBox(width: kPaddingContent),
                                  Flexible(flex: 1, child: _RecommendedAlbum()),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: _BottomNavbar(),
    );
  }
}
