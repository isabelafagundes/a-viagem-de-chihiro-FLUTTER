import 'package:flutter/material.dart';
import 'package:viagem_de_chihiro_flutter/interface/widgets/btn_assista_trailer.widget.dart';
import 'package:viagem_de_chihiro_flutter/interface/widgets/btn_assistir_agora.widget.dart';

class TextosWidget extends StatelessWidget {
  const TextosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool telaPequena = MediaQuery.of(context).size.width < 1000;
    return Column(
      crossAxisAlignment: telaPequena ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (!telaPequena) const SizedBox(height: 20),
        Text(
          "Hayao Miyazaki".toUpperCase(),
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
          ),
          textAlign: telaPequena ? TextAlign.center : null,
        ),
        const SizedBox(height: 15),
        Text(
          "A viagem \nde chihiro".toUpperCase(),
          style: TextStyle(
            fontSize: telaPequena ? 56 : 68,
            color: Colors.white,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w900,
            height: 1.09,
          ),
          textAlign: telaPequena ? TextAlign.center : null,
        ),
        telaPequena ? Image.asset("assets/img/image.png") : const SizedBox(height: 15),
        Container(
          margin: telaPequena ? null : const EdgeInsets.symmetric(vertical: 30),
          child: Text(
            "Chihiro chega a um mundo mágico dominado por uma bruxa. Aqueles que a "
            "desobedecem são transformados em animais.",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
            ),
            textAlign: telaPequena ? TextAlign.center : null,
          ),
        ),
        const SizedBox(height: 25),
        Flex(
          direction: MediaQuery.of(context).size.width < 1250 ? Axis.vertical : Axis.horizontal,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            BtnAssistirAgora(),
            SizedBox(height: 20),
            BtnAssistaTrailer(),
          ],
        )
      ],
    );
  }
}
