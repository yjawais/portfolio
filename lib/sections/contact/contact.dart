import 'package:flutter/material.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:flip_card/flip_card.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:folio/animations/bottom_animation.dart';
import 'package:folio/utils/contact_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:carousel_slider/carousel_slider.dart';

part 'widgets/_contact_services_card.dart';
part 'widgets/_contact_services_card_back.dart';

part 'contact_desktop.dart';
part 'contact_mobile.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}
