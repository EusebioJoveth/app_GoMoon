import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeigth, _deviceWidth;

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    _deviceHeigth = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: _deviceHeigth,
        width: _deviceWidth,
        padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
        child: _destinationDropDownWidget(),
      ),
    ));
  }

  Widget _pageTitle() {
    return const Text(
      '#VouAoEspaço',
      style: TextStyle(
          color: Colors.white, fontSize: 35, fontWeight: FontWeight.w800),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage("assets/images/astro.jpg"),
      )),
    );
  }

  Widget _destinationDropDownWidget() {
    List<DropdownMenuItem<String>> _items = [
      'Eusebio web developer',
      'Kambulo WebDesign',
    ].map(
      (e) {
        return DropdownMenuItem(
          child: Text(e),
          value: e,
        );
      },
    ).toList();
    return Container(
      child: DropdownButton(
        onChanged: (_) {},
        items: _items,
      ),
    );
  }
}
