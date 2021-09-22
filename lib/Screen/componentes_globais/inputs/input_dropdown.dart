import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/cores.dart';

class CustomDropdown extends StatefulWidget {
  final Size size;
  final String text;
  final List<String> optionsList;
  const CustomDropdown(
      {Key? key,
      required this.size,
      required this.text,
      required this.optionsList})
      : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.size.height * 0.01,
          bottom: widget.size.height * 0.01,
          right: widget.size.width * 0.05,
          left: widget.size.width * 0.05),
      child: Container(
          height: widget.size.height * 0.05,
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.05),
            child: Center(
              child: TextDropdownFormField(
                options: widget.optionsList,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.arrow_drop_down,
                      color: AppCores.PRETO,
                      size: 40,
                    ),
                    hintText: widget.text,
                    hintStyle: TextStyle(color: AppCores.PRETO)),
                dropdownHeight: widget.size.height * 0.14,
              ),
            ),
          )),
    );
  }
}
