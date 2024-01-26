import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BtnAssistirAgora extends StatelessWidget {
  const BtnAssistirAgora({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          await launchUrl(
            Uri.parse("https://web.prod.ftl.netflix.com/br/title/60023642"),
            mode: LaunchMode.externalApplication,
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/img/btn_losango.png"),
            Container(
              width: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Assistir agora".toUpperCase(),
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
