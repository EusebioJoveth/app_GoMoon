import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _pageTitle(),
            _destinationDropDownWidget(),
            _travellersInformationWidget(),
          ],
        ),
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
    return CustomDropDownButtonClass(
        values: const ['Eusebio Developer', 'Kambulo WebDesign'],
        width: _deviceWidth);
  }

  Widget _travellersInformationWidget() {
    return CustomDropDownButtonClass(
      values: const ['1', '2', '3', '4'],
      width: _deviceWidth * 0.45,
    );
  }
}
