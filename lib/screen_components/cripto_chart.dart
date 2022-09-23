import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listagem_cripto/utils/extention_functions.dart';

import '../utils/mock_chart_data.dart';
import 'chart_type_button.dart';
import 'days_filter.dart';

class CriptoChart extends StatefulWidget {
  const CriptoChart(this.values, {Key? key}) : super(key: key);
  final List<List<num>> values;

  @override
  State<CriptoChart> createState() => _CriptoChartState();
}

class _CriptoChartState extends State<CriptoChart> {
  late List<charts.Series<dynamic, num>> seriesList2 =
      createCriptoData(widget.values);
  final bool animate2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        color: const Color.fromARGB(249, 238, 239, 243),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("USS 0,00",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(
              height: 200,
              width: 500,
              child: charts.LineChart(seriesList2, animate: animate2)),
          Row(
            children: [
              DaysFilterButtons(daysCallback: (dias) {
                setState(() {
                  seriesList2 = createCriptoData(dias.convertToInteger());
                });
              }),
              const Spacer(),
              const ChartTypeButton()
            ],
          )
        ]));
  }
}
