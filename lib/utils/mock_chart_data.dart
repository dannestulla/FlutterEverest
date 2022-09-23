import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;

import '../models/cripto_chart_model.dart';

List<charts.Series<CriptoChartModel, num>> createCriptoData(List<List<num>> valuesX) {

  /*final criptoData = List<double>.generate(
      numberOfDays, (index) => (Random().nextDouble() + 3) * index);*/
  final numberOfDays = valuesX.length;
  final cdiData = List<num>.generate(
      numberOfDays, (index) => (Random().nextDouble() + 2) + index);

  return [
    charts.Series<CriptoChartModel, num>(
      id: 'Cripto',
      colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
      domainFn: (CriptoChartModel model, _) => model.date ,
      measureFn: (CriptoChartModel model, _) => model.price,
      data: createCriptodata(numberOfDays, valuesX.first),
    ),
    charts.Series<CriptoChartModel, num>(
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
    int numberOfDays, List<num> priceData) {
  double i = 0;
  List<CriptoChartModel> list = [];
  while (i < numberOfDays) {
    list.add(CriptoChartModel(priceData[i.toInt()], i));
    i++;
  }
  return list;
}


