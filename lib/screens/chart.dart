import 'package:covid_19/models/timeSeries_cases.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;



class Chart extends StatelessWidget {

  final List<charts.Series<TimeSeriesCases, DateTime>> seriesList;
  final bool animate;

  Chart(this.seriesList, {this.animate});  

  @override
  Widget build(BuildContext context) {

    return charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      domainAxis: charts.EndPointsTimeAxisSpec(),
    );

  }
}