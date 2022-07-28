import 'package:flutter/cupertino.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:listagem_cripto/extention_functions.dart';

import '../mock_chart_data.dart';
import 'days_filter.dart';

class CriptoChart extends StatefulWidget {
  const CriptoChart({Key? key}) : super(key: key);

  @override
  State<CriptoChart> createState() => _CriptoChartState();
}

class _CriptoChartState extends State<CriptoChart> {
  List<charts.Series<dynamic, num>> seriesList2 = createCriptoData(5);
  final bool animate2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
          height: 300,
          width: 500,
          child: charts.LineChart(seriesList2, animate: animate2)),
      DaysFilterButtons(daysCallback: (dias) {
        setState(() {
          seriesList2 = createCriptoData(dias.convertToInteger());
        });
      })
    ]);
  }
}

class CriptoChartModel {
  final double price;
  final double date;

  CriptoChartModel(this.price, this.date);
}
