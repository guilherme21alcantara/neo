import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';

class CotacaoCoberturaCard extends StatefulWidget {
  final bool value;
  final Function(bool?) onChanged;
  final String txt;
  final String price;
  final String expandedTxt;
  const CotacaoCoberturaCard(
      {Key? key,
      required this.value,
      required this.onChanged,
      required this.txt,
      required this.price,
      required this.expandedTxt})
      : super(key: key);

  @override
  CotacaoCoberturaCardState createState() => CotacaoCoberturaCardState();
}

class CotacaoCoberturaCardState extends State<CotacaoCoberturaCard> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Container(
        color: AppCores.BRANCO,
        height: size.height * 0.1,
        width: size.width * 0.9,
        child: ExpandablePanel(
          header: Text(widget.txt),
          collapsed: Text(
            '',
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          expanded: Text(
            widget.expandedTxt,
            softWrap: true,
          ),
        ));
  }
}
