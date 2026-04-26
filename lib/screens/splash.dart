import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatelessWidget{
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(child: SvgPicture.asset('assets/image/logo/Grabber.svg')),
   );
  }
}