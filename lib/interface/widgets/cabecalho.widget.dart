import 'package:flutter/material.dart';

class CabecalhoWidget extends StatelessWidget {
  const CabecalhoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool telaPequena = MediaQuery.of(context).size.width < 1000;
    return Flex(
      direction: telaPequena ? Axis.vertical : Axis.horizontal,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!telaPequena) SizedBox(height: 20),
        Image.asset("assets/img/logo.png"),
        !telaPequena ? const Spacer() : SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width < 300 ? null : 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/img/facebook.png"),
              Image.asset("assets/img/instagram.png"),
              Image.asset("assets/img/twitter.png"),
              Image.asset("assets/img/youtube.png"),
            ],
          ),
        ),
      ],
    );
  }
}
