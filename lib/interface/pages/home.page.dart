import 'package:flutter/material.dart';
import 'package:viagem_de_chihiro_flutter/interface/widgets/card_chihiro.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CardChihiroWidget(),
    );
  }
}
