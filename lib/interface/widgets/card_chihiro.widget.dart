import 'package:flutter/material.dart';
import 'package:viagem_de_chihiro_flutter/interface/widgets/cabecalho.widget.dart';
import 'package:viagem_de_chihiro_flutter/interface/widgets/textos.widget.dart';

class CardChihiroWidget extends StatelessWidget {
  const CardChihiroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool telaPequena = MediaQuery.of(context).size.width < 1000;
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF628E75), Color(0xFF1A4855)],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: telaPequena
                  ? const EdgeInsets.symmetric(horizontal: 25, vertical: 20)
                  : const EdgeInsets.fromLTRB(100, 20, 100, 0),
              child: const CabecalhoWidget(),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: telaPequena
                        ? const EdgeInsets.symmetric(horizontal: 25)
                        : const EdgeInsets.fromLTRB(100, 20, 0, 0),
                    child: const TextosWidget(),
                  ),
                ),
                if (!telaPequena)
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/img/image.png",
                        ),
                      ],
                    ),
                  )
              ],
            ),
            if (telaPequena) const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
