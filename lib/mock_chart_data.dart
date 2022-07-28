import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:listagem_cripto/screen_components/cripto_chart.dart';

List<charts.Series<CriptoChartModel, double>> createCriptoData(int numberOfDays) {
  final criptoData = List<double>.generate(
      numberOfDays, (index) => (Random().nextDouble() + 3) * index);
  final cdiData = List<double>.generate(
      numberOfDays, (index) => (Random().nextDouble() + 2) + index);

  return [
    charts.Series<CriptoChartModel, double>(
      id: 'Cripto',
      colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
      domainFn: (CriptoChartModel model, _) => model.date ,
      measureFn: (CriptoChartModel model, _) => model.price,
      data: createCriptodata(numberOfDays, criptoData),
    ),
    charts.Series<CriptoChartModel, double>(
      id: 'CDI',
      colorFn: (_, __) => charts.MaterialPalette.gray.shadeDefault,
      dashPatternFn: (_,__) => [5,1],
      domainFn: (CriptoChartModel model, _) => model.date,
      measureFn: (CriptoChartModel model, _) => model.price,
      data: createCriptodata(numberOfDays, cdiData),
    )
  ];
}

List<CriptoChartModel> createCriptodata(
    int numberOfDays, List<double> priceData) {
  double i = 0;
  List<CriptoChartModel> list = [];
  while (i < numberOfDays) {
    list.add(CriptoChartModel(priceData[i.toInt()], i));
    i++;
  }
  return list;
}
