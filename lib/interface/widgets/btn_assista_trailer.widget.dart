import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BtnAssistaTrailer extends StatelessWidget {
  const BtnAssistaTrailer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          await launchUrl(
            Uri.parse("https://youtu.be/ByXuk9QqQkk?si=EQ2tzAMFLJcVhuYM"),
            mode: LaunchMode.externalApplication,
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/img/btn_losango_vazado.png"),
            Container(
              width: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Assista o trailer".toUpperCase(),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
